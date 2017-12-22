//
//  Gamer.swift
//  Global
//
//  Created by don't touch me on 12/22/17.
//  Copyright © 2017 trvl, LLC. All rights reserved.
//

import UIKit

class Gamer {
    
    var userid: String
    var score: NSNumber
    var mtime: Double
    var qtime: Double
    
    init(userid: String, score: NSNumber, mtime: Double, qtime: Double) {
        self.userid = userid as String
        self.score = score as NSNumber
        self.mtime = mtime as Double
        self.qtime = qtime as Double
    }
}
