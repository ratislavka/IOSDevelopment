//
//  ViewController.swift
//  DiceeApp-lab4
//
//  Created by Ratislav Ovchinnikov on 18.10.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var logoImage: UIImageView!
    @IBOutlet var leftDice: UIImageView!
    @IBOutlet var rightDice: UIImageView!
    
    let logo: UIImage = .diceeLogo
    
    let diceImages: [UIImage] = [.diceOne, .diceTwo, .diceThree, .diceFour, .diceFive, .diceSix]
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        logoImage.image = logo
        
        leftDice.image = diceImages.randomElement()
        rightDice.image = diceImages.randomElement()
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            leftDice.image = diceImages.randomElement()
            rightDice.image = diceImages.randomElement()
        }
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        leftDice.image = diceImages.randomElement()
        rightDice.image = diceImages.randomElement()
    }
}

