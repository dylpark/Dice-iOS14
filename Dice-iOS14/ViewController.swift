//
//  ViewController.swift
//  Dice-iOS14
//
//  Copyright © 2021 Dylan Park.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6"),]
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
        sender.alpha = 0.5

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
      }
        
    }

