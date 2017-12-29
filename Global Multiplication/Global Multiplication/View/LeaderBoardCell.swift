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
        
    }

    internal func configureCell(leader: Leader) {
        useridLabel.text = leader.userid
        scoreLabel.text  = String(describing: leader.score)
        mTimeLabel.text  = String(describing: leader.mtime)
        qTimeLabel.text  = String(describing: leader.qtime)
    }
}
