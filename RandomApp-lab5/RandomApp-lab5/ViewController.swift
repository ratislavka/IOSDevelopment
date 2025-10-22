//
//  ViewController.swift
//  RandomApp-lab5
//
//  Created by Ratislav Ovchinnikov on 18.10.2025.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var imageRandomized: UIImageView!
    @IBOutlet var nameRandomized: UILabel!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var userInputTextField: UITextField!
    @IBOutlet var counterLabel: UILabel!
    
    var score: Int = 50
    let costOfSpin: Int = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.isHidden = true
        userInputTextField.keyboardType = .numberPad
        counterLabel.text = String(score)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func randomize(_ sender: Any) {
        randomize()
        
    }
    
    @IBAction func refill(_ sender: Any) {
        nameRandomized.textColor = .systemRed
        nameRandomized.text = "Kaspi: 87082414789"
        imageRandomized.image = .qrCode
        score += 100
        counterLabel.text = String(score)
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            randomize()
        }
    }
    
    
    private func randomize() {

        
        if score - costOfSpin >= 0 {
            
            resultLabel.isHidden = true
            score -= costOfSpin
            counterLabel.text = String(score)
            nameRandomized.textColor = .white
            
            let randomizedValue = rouletteImages.randomElement()
            imageRandomized.image = randomizedValue?.image
            nameRandomized.text = "Roulette's value is: \(randomizedValue!.name)"
            
            let userGuess = userInputTextField.text
            
            if userGuess == randomizedValue?.name {
                resultLabel.isHidden = false
                
                score += 2 * Int(userGuess!)!
                counterLabel.text = String(score)
            }
        }
        else{
            nameRandomized.textColor = .systemRed
            nameRandomized.text = "You're out of money!"
            
        }
    }
    
}

