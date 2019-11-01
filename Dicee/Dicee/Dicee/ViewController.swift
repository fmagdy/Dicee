//
//  ViewController.swift
//  Dicee
//
//  Created by Fady Magdy on 10/20/19.
//  Copyright © 2019 Mob.Fady. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var randomDiceIndex1:Int=0
    var randomDiceIndex2:Int=0
    
    let diceArray=["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImageViews()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var diceImageView1: UIImageView!
    
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImageViews()
    }
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImageViews()
     
    }
    
    func updateDiceImageViews  (){
        randomDiceIndex1=Int.random(in: 0...5)
        randomDiceIndex2=Int.random(in: 0...5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])

    }
}

