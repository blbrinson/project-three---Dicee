//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Student: Brice Brinson
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//  Interface Builder - "Outlet" : Allows me to reference a UI element
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceViewImage2: UIImageView!
    
//  Once randomized, the dicee app no longer requires these variables.
//        var leftDiceNumber = 1
//        var rightDiceNumber = 5
    
//  Since there's no longer anything needed to happen when the app loads, this code can be deleted.
//      override func viewDidLoad() {
//      super.viewDidLoad()
        //  Do any additional setup after loading the view
//        }
    
/*
    #dotNotation
    IBOutlet name.What property you want to change = The change you want to make
    Who.What = Value
*/

//  Interface Builder - "Action" : Allows me to reference user interactions, such as a button press
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //This will be what happens whenever the button is pressed
        //If you want text to get printed to the debugger, just "print" it.
        
/*      Always consider simplifying code to be as less complex as possible.
        ie. refer to the dice array versus typing it all out.
         Using let vs var makes the dice a constant and not a varying object.
         Igt wont be changed, so it can stay as a let.*/
        
        let diceArray = [ #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8470588235), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        // These are two different ways of randomizing elements in arrays. Use whichever comes easier.
        diceImageView1.image = diceArray.randomElement()
        diceViewImage2.image = diceArray[Int.random(in: 0...5)]
        
    }
    

}

