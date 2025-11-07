//
//  ViewController.swift
//  MusicPlayer
//
//  Created by Ratislav Ovchinnikov on 04.11.2025.
//

import UIKit
import AVFoundation
import MediaPlayer

class ViewController: UIViewController, AVAudioPlayerDelegate {

    @IBOutlet var songCover: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var controlStack: UIStackView!
    @IBOutlet var forwardButton: UIButton!
    @IBOutlet var backwardButton: UIButton!
    @IBOutlet var pausePlayButton: UIButton!
    @IBOutlet var trackProgress: UIProgressView!
    @IBOutlet var artistLabel: UILabel!
    
    var player: AVAudioPlayer?
    var currentIndex = 0
    var progressTimer: Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songCover.layer.cornerRadius = 20
        
        gestureConfigure()
        configureAudioSession()
        commandCenterConfiguration()
    }
    

    private func playTrack() {
        let track = tracks[currentIndex]
        
        guard let url = Bundle.main.url(forResource: track.fileName, withExtension: "flac") else {
            return
        }
  
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.delegate = self
            player?.play()
            pausePlayButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            updateUI()
            playingCenterConfiguration(for: track)
            startProgressUpdater()
        } catch {
            return
        }

    }
    
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        currentIndex = (currentIndex + 1) % tracks.count
        playTrack()
    }
                                                    
                                                    
    @IBAction func previousTrack(_ sender: Any) {
        currentIndex = (currentIndex - 1 + tracks.count) % tracks.count
        playTrack()
    }
    
    
    @IBAction func nextTrack(_ sender: Any) {
        currentIndex = (currentIndex + 1) % tracks.count
        playTrack()
    }
    
    
    @IBAction func pausePlay(_ sender: Any) {
        guard let player = player else {
            playTrack()
            return
        }
        
        if player.isPlaying {
            player.pause()
            pausePlayButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        } else {
            player.play()
            pausePlayButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
        }
    }
    
    
    private func startProgressUpdater() {
        progressTimer?.invalidate()
        progressTimer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
            if let player = self.player {
                self.trackProgress.progress = Float(player.currentTime / player.duration)
            }
        }
    }
    
    
    private func updateNowPlaying() {
        guard let player = player else { return }
        let track = tracks[currentIndex]
        
        var info = MPNowPlayingInfoCenter.default().nowPlayingInfo ?? [:]
        info[MPNowPlayingInfoPropertyElapsedPlaybackTime] = player.currentTime
        info[MPNowPlayingInfoPropertyPlaybackRate] = player.isPlaying ? 1.0 : 0.0
        MPNowPlayingInfoCenter.default().nowPlayingInfo = info
    }
    
    
    private func updateUI() {
        let track = tracks[currentIndex]
        titleLabel.text = track.title
        artistLabel.text = track.artist
        songCover.image = track.cover
        
        if track.themeColor == "Orange" { configureOrangeTheme() }
        else if track.themeColor == "Blue" { configureBlueTheme() }
        else { configureBlueTheme() }
    }
    
    
    private func configureAudioSession() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch  { return }
    }
    
    
    private func playingCenterConfiguration(for track: Track) {
        var info: [String: Any] = [
            MPMediaItemPropertyTitle: track.title,
            MPMediaItemPropertyArtist: track.artist
        ]
        
        if let image = track.cover.cgImage {
            let artwork = MPMediaItemArtwork(boundsSize: track.cover.size) { _ in
                return UIImage(cgImage: image)
            }
            info[MPMediaItemPropertyArtwork] = artwork
        }
        
        if let player = player {
            info[MPNowPlayingInfoPropertyElapsedPlaybackTime] = player.currentTime
            info[MPMediaItemPropertyPlaybackDuration] = player.duration
            info[MPNowPlayingInfoPropertyPlaybackRate] = player.isPlaying ? 1.0 : 0.0
        }
        
        MPNowPlayingInfoCenter.default().nowPlayingInfo = info
    }
    
    
    private func commandCenterConfiguration() {
        
        let commandCenter = MPRemoteCommandCenter.shared()
        
        commandCenter.playCommand.addTarget { _ in
            self.player?.play()
            self.updateNowPlaying()
            return .success
        }
        
        commandCenter.pauseCommand.addTarget { _ in
            self.player?.pause()
            self.updateNowPlaying()
            return .success
        }
        
        commandCenter.previousTrackCommand.addTarget { _ in
            self.previousTrackGesture()
            return .success
        }
        
        commandCenter.nextTrackCommand.addTarget { _ in
            self.nextTrackGesture()
            return .success
        }
        
//        MPRemoteCommandCenter.shared().changePlaybackPositionCommand.addTarget { [weak self] event in
//            guard let self = self,
//                  let player = self.player,
//                  let event = event as? MPChangePlaybackPositionCommandEvent else {
//                return .commandFailed
//            }
//            player.currentTime = event.positionTime
//            self.updateNowPlaying()
//            return .success
//        }

    }
    
    
    private func gestureConfigure() {
        songCover.isUserInteractionEnabled = true
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(previousTrackGesture))
        swipeRight.direction = .right
        songCover.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(nextTrackGesture))
        swipeLeft.direction = .left
        songCover.addGestureRecognizer(swipeLeft)
    }
    
    
    @objc func previousTrackGesture() {
        currentIndex = (currentIndex - 1 + tracks.count) % tracks.count
        playTrack()
    }

    @objc func nextTrackGesture() {
        currentIndex = (currentIndex + 1) % tracks.count
        playTrack()
    }
    
    
    
    private func configureBlueTheme() {
        let buttonBlue = UIColor(red: 0.0, green: 1.0, blue: 0.992, alpha: 1.0) // #00FFFD
        let textBlue = UIColor(red: 0.784, green: 0.961, blue: 1.0, alpha: 1.0) // #C8F5FF

        titleLabel.textColor = textBlue
        artistLabel.textColor = textBlue
        forwardButton.tintColor = buttonBlue
        backwardButton.tintColor = buttonBlue
        pausePlayButton.tintColor = buttonBlue
        trackProgress.tintColor = buttonBlue
    }
    
    
    private func configureOrangeTheme() {
        let textOrange = UIColor(red: 1.0, green: 0.713, blue: 0.262, alpha: 1.0) // #FFB643
        let buttonOrange = UIColor(red: 1.0, green: 0.611, blue: 0.0, alpha: 1.0) // #FF9C00
        
        titleLabel.textColor = textOrange
        artistLabel.textColor = textOrange
        forwardButton.tintColor = buttonOrange
        backwardButton.tintColor = buttonOrange
        pausePlayButton.tintColor = buttonOrange
        trackProgress.tintColor = buttonOrange
    }
}
