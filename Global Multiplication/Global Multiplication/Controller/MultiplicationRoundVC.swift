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
    @IBOutlet var startStopSegment: UISegmentedControl!
    
    var timer: Timer?
    var roundTimer: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Round"
        
        self.timerLabel.text = "20:00"

    }
    
    func updateTimer() {
        roundTimer = roundTimer + 1
        if roundTimer == 20.00 {
            timer?.invalidate()
            
            self.performSegue(withIdentifier: "SummarySegue", sender: self)
        }
        
        self.timerLabel.text = "\(timer)"
    }
    

    

}
