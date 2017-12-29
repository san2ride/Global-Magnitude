//
//  Leader.swift
//  Global
//
//  Created by don't touch me on 12/22/17.
//  Copyright © 2017 trvl, LLC. All rights reserved.
//

import UIKit

typealias JSONDictionary = [String: AnyObject]
typealias JSONArray = [JSONDictionary]

class Leader: NSObject {
    
    var userid: String = ""
    var score: String = ""
    var mtime: String = ""
    var qtime: String = ""
    
    override init() {
        super.init()
    }
    
    init(dict: JSONDictionary) {
        super.init()
        
        if let userid = dict["userid"] as? String {
            self.userid = userid
        } else {
            print("Could not parse userid")
        }
        
        if let score = dict["score"] as? String {
            self.score = score
        } else {
            print("Could not parse score")
        }
        
        if let mtime = dict["mtime"] as? String {
            self.mtime = mtime
        } else {
            print("Could not parse mtime")
        }
        
        if let qtime = dict["qtime"] as? String {
            self.qtime = qtime
        } else {
            print("Could not parse qtime")
        }
    }
}
