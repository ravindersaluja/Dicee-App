//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    IBOutlet helps create a link b/w UI and code.
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var leftDiceIndex = 0
    var rightDiceIndex = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Who.What = Value
//        = Image Literal(Lets you select an image from the image assets)
//        diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
//        diceImageView1.alpha = 0.8
//        diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
//        diceImageView2.alpha = 0.8
    }
//IBOutlet is from code to design
//IBAction is from design to code
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][leftDiceIndex]
        diceImageView2.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][rightDiceIndex]
       leftDiceIndex+=1
       rightDiceIndex-=1
    }
    
}

