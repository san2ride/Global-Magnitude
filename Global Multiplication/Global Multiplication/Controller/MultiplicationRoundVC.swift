//
//  MultiplicationRoundVC.swift
//  Global Multiplication
//
//  Created by don't touch me on 12/19/17.
//  Copyright © 2017 trvl, LLC. All rights reserved.
//

import UIKit

class MultiplicationRoundVC: UIViewController {
    
    @IBOutlet var timerLabel: UILabel!
    @IBOutlet var correctScore: UILabel!
    @IBOutlet var wrongScore: UILabel!
    @IBOutlet var startPressed: UIButton!
    @IBOutlet var finishedPressed: UIButton!
    
    var counter = 0.00
    var timer = Timer()
    var isPlaying = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Round"
        
        timerLabel.text = String(counter)
        finishedPressed.isEnabled = false
        
    }
    
    @IBAction func startTimer(_ sender: UIButton) {
        if(isPlaying) {
            return
        }
        
        startPressed.isEnabled = false
        finishedPressed.isEnabled = true
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(SaveTimer), userInfo: nil, repeats: true)
        isPlaying = true
    }
    
    @objc func SaveTimer() {
        
        counter = counter + 0.1
        timerLabel.text = String(format: "%.1f", counter)
        
    }
    
    @IBAction func finishedTimer(_ sender: UIButton) {
        
        startPressed.isEnabled = true
        finishedPressed.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
    }
}
