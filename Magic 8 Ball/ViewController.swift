//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    @IBOutlet weak var ballImage: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    @IBAction func rollButton(_ sender: UIButton) {
        // this is another way to take a random element from an array
        let randomImage = ballArray.randomElement()!
        
        // Set the first dice image to randomImage
        ballImage.image = UIImage(imageLiteralResourceName: randomImage)
    }
    
    override func viewDidLoad() {
        
        // Set the button's title text programmatically
        rollButton.setTitle("ASK", for: .normal)
        
        // Set the button's title font size programmatically
        rollButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        
        // Load the color from assets and set it as the button's background color
        if let buttonBackGround = UIColor(named: "buttonBackground") {
            rollButton.backgroundColor = buttonBackGround
        } else {
            print("Color not found in assets")
        }
        
        // Make the button rounded
        rollButton.layer.cornerRadius = rollButton.frame.size.height / 3
        rollButton.clipsToBounds = true
        
    }

}

