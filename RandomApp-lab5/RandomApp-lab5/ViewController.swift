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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.isHidden = true
    }

    
    @IBAction func randomize(_ sender: Any) {
        randomize()
        
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            randomize()
        }
    }
    
    
    private func randomize() {
        resultLabel.isHidden = true
        
        let randomizedValue = rouletteImages.randomElement()
        imageRandomized.image = randomizedValue?.image
        nameRandomized.text = "Roulette's value is: \(randomizedValue!.name)"
        
        let userGuess = userInputTextField.text
        
        if userGuess == randomizedValue?.name {
            resultLabel.isHidden = false
        }
    }
    
}

