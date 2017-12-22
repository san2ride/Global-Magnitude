//
//  LeaderBoardCell.swift
//  Global Multiplication
//
//  Created by don't touch me on 12/19/17.
//  Copyright © 2017 trvl, LLC. All rights reserved.
//

import UIKit

class LeaderBoardCell: UITableViewCell {
    
    @IBOutlet var useridLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var mTimeLabel: UILabel!
    @IBOutlet var qTimeLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    internal func configureCell(gamer: Gamer) {
        useridLabel.text = gamer.userid
        scoreLabel.text  = String(describing: gamer.score)
        mTimeLabel.text  = String(describing: gamer.mtime)
        qTimeLabel.text  = String(describing: gamer.qtime)
        
    }
}
