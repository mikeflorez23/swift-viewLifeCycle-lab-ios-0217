//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLeftDie: UIView!
    @IBOutlet weak var middleLeftDie: UIView!
    @IBOutlet weak var bottomLeftDie: UIView!
    @IBOutlet weak var middleDie: UIView!
    @IBOutlet weak var topRightDie: UIView!
    @IBOutlet weak var middleRightDie: UIView!
    @IBOutlet weak var bottomRightDie: UIView!
    @IBOutlet weak var firstRandomNumberLabel: UILabel!
    @IBOutlet weak var secondRandomNumberLabel: UILabel!
    @IBOutlet weak var thirdRandomNumberLabel: UILabel!
    @IBOutlet weak var fourthRandomNumberLabel: UILabel!
    @IBOutlet weak var fifthRandomNumberLabel: UILabel!
    @IBOutlet weak var sixthRandomNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topLeftDie.isHidden = true
        middleLeftDie.isHidden = true
        bottomLeftDie.isHidden = true
        middleDie.isHidden = true
        topRightDie.isHidden = true
        middleRightDie.isHidden = true
        bottomRightDie.isHidden = true
        firstRandomNumberLabel.isHidden = true
        secondRandomNumberLabel.isHidden = true
        thirdRandomNumberLabel.isHidden = true
        fourthRandomNumberLabel.isHidden = true
        fifthRandomNumberLabel.isHidden = true
        sixthRandomNumberLabel.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        //        updateLabelWithRoll(roll: randomDiceRoll())
        //        rearrangeDie(updateLabelWithRoll(roll: randomDiceRoll()))
        rearrangeDie()
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    
    func updateLabelWithRoll(roll: Int) {
        let diceScore = String(roll)
        if firstRandomNumberLabel.isHidden {
            firstRandomNumberLabel.text = diceScore
            firstRandomNumberLabel.isHidden = false
        } else if secondRandomNumberLabel.isHidden {
            secondRandomNumberLabel.text = diceScore
            secondRandomNumberLabel.isHidden = false
        } else if thirdRandomNumberLabel.isHidden {
            thirdRandomNumberLabel.text = diceScore
            thirdRandomNumberLabel.isHidden = false
        } else if fourthRandomNumberLabel.isHidden {
            fourthRandomNumberLabel.text = diceScore
            fourthRandomNumberLabel.isHidden = false
        } else if fifthRandomNumberLabel.isHidden {
            fifthRandomNumberLabel.text = diceScore
            fifthRandomNumberLabel.isHidden = false
        } else if sixthRandomNumberLabel.isHidden {
            sixthRandomNumberLabel.text = diceScore
            sixthRandomNumberLabel.isHidden = false
        } else {
            firstRandomNumberLabel.isHidden = true
            secondRandomNumberLabel.isHidden = true
            thirdRandomNumberLabel.isHidden = true
            fourthRandomNumberLabel.isHidden = true
            fifthRandomNumberLabel.isHidden = true
            sixthRandomNumberLabel.isHidden = true
        }
    }
    
    func rearrangeDie() {
        if randomDiceRoll() == 1 {
            middleDie.isHidden = false
            print(randomDiceRoll())
        } else if randomDiceRoll() == 2 {
            bottomLeftDie.isHidden = false
            topRightDie.isHidden = false
            print(randomDiceRoll())
        } else if randomDiceRoll() == 3 {
            bottomLeftDie.isHidden = false
            middleDie.isHidden = false
            topRightDie.isHidden = false
            print(randomDiceRoll())
        } else if randomDiceRoll() == 4 {
            topRightDie.isHidden = false
            topLeftDie.isHidden = false
            bottomLeftDie.isHidden = false
            bottomRightDie.isHidden = false
            print(randomDiceRoll())
        } else if randomDiceRoll() == 5 {
            topRightDie.isHidden = false
            topLeftDie.isHidden = false
            bottomLeftDie.isHidden = false
            bottomRightDie.isHidden = false
            middleDie.isHidden = false
            print(randomDiceRoll())
        } else if randomDiceRoll() == 6 {
            topRightDie.isHidden = false
            topLeftDie.isHidden = false
            bottomLeftDie.isHidden = false
            bottomRightDie.isHidden = false
            middleRightDie.isHidden = false
            middleLeftDie.isHidden = false
            print(randomDiceRoll())
        } else {
            print(randomDiceRoll())
        }
    }
}




























