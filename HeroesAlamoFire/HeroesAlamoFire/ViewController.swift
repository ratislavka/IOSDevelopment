//
//  ViewController.swift
//  HeroesAlamoFire
//
//  Created by Ratislav Ovchinnikov on 05.12.2025.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet private weak var heroImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var fullNameLabel: UILabel!
    @IBOutlet private weak var intelligenceLabel: UILabel!
    @IBOutlet private weak var strengthLabel: UILabel!
    @IBOutlet private weak var speedLabel: UILabel!
    @IBOutlet private weak var durabilityLabel: UILabel!
    @IBOutlet private weak var powerLabel: UILabel!
    @IBOutlet private weak var combatLabel: UILabel!
    @IBOutlet private weak var genderLabel: UILabel!
    @IBOutlet private weak var raceLabel: UILabel!
    @IBOutlet private weak var publisherLabel: UILabel!
    @IBOutlet private weak var occupationLabel: UILabel!
    @IBOutlet private weak var randomizeButton: UIButton!
    @IBOutlet private weak var activityIndicator: UIActivityIndicatorView!

    private var heroService = HeroService()
    private var currentHero: HeroModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        heroService.delegate = self
        setupInitialHeroIfNeeded()
    }

    
    private func setupUI() {
        heroImageView.layer.cornerRadius = 12
        
        randomizeButton.layer.cornerRadius = 8
        
        activityIndicator.hidesWhenStopped = true
    }
    
    
    @IBAction func randomizeButtonTapped(_ sender: Any) {
        heroService.fetchHero()
    }

    
    private func updateUI(with hero: HeroModel) {
        nameLabel.text = hero.name
        
        if let fullName = hero.biography.fullName, !fullName.isEmpty {
            fullNameLabel.text = fullName
        } else {
            fullNameLabel.text = "Unknown"
        }
    
        intelligenceLabel.text = "Intelligence: \(hero.powerstats.intelligence ?? 0)"
        strengthLabel.text = "Strength: \(hero.powerstats.strength ?? 0)"
        speedLabel.text = "Speed: \(hero.powerstats.speed ?? 0)"
        durabilityLabel.text = "Durability: \(hero.powerstats.durability ?? 0)"
        powerLabel.text = "Power: \(hero.powerstats.power ?? 0)"
        combatLabel.text = "Combat: \(hero.powerstats.combat ?? 0)"
        
        genderLabel.text = "Gender: \(hero.appearance.gender ?? "Unknown")"
        raceLabel.text = "Race: \(hero.appearance.race ?? "Unknown")"
               
        
        publisherLabel.text = "Publisher: \(hero.biography.publisher ?? "Unknown")"
               
        occupationLabel.text = "Occupation: \(hero.work.occupation ?? "Unknown")"
        
        if let imageURL = URL(string: hero.images.md) {
                heroImageView.kf.setImage(with: imageURL)
        }
    }
    
    
    private func setLoadingState(_ isLoading: Bool) {
          if isLoading {
              activityIndicator.startAnimating()
              
              heroImageView.isHidden = true
              nameLabel.isHidden = true
              fullNameLabel.isHidden = true
              intelligenceLabel.isHidden = true
              strengthLabel.isHidden = true
              speedLabel.isHidden = true
              durabilityLabel.isHidden = true
              powerLabel.isHidden = true
              combatLabel.isHidden = true
              genderLabel.isHidden = true
              raceLabel.isHidden = true
              publisherLabel.isHidden = true
              occupationLabel.isHidden = true
              randomizeButton.isHidden = true
          } else {
              activityIndicator.stopAnimating()
              
              heroImageView.isHidden = false
              nameLabel.isHidden = false
              fullNameLabel.isHidden = false
              intelligenceLabel.isHidden = false
              strengthLabel.isHidden = false
              speedLabel.isHidden = false
              durabilityLabel.isHidden = false
              powerLabel.isHidden = false
              combatLabel.isHidden = false
              genderLabel.isHidden = false
              raceLabel.isHidden = false
              publisherLabel.isHidden = false
              occupationLabel.isHidden = false
              randomizeButton.isHidden = false
          }
      }
}



extension ViewController: HeroServiceDelegate {
    func onHeroDidUpdate(model: HeroModel) {
        configure(model: model)
        storeLocally(model: model)
    }

    private func configure(model: HeroModel) {
        updateUI(with: model)
    }

    private func storeLocally(model: HeroModel) {
        let heroData = try? PropertyListEncoder().encode(model)
        UserDefaults.standard.set(heroData, forKey: "heroData")
    }

    private func setupInitialHeroIfNeeded() {
        guard
            let heroData = UserDefaults.standard.data(forKey: "heroData"),
            let heroModel = try? PropertyListDecoder().decode(HeroModel.self, from: heroData)
        else {
            return
        }

        configure(model: heroModel)
    }
}
