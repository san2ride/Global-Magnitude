//
//  LeaderBoardAPI.swift
//  Global
//
//  Created by don't touch me on 12/22/17.
//  Copyright © 2017 trvl, LLC. All rights reserved.
//

import UIKit

class LeaderBoardAPI {
    
    func fetchLeaders(completion: @escaping ([Leader]) -> Void) {
        
        var leadersArray = [Leader]()
        
        
        
        let url = URL(string: "https://misc.tealdrones.com/global-magnitude/leaderboard")
        
        let request = NSMutableURLRequest(url: url!)
        
        request.httpMethod = "GET"
        
        let session: URLSession = {
            let config = URLSessionConfiguration.default
            return URLSession(configuration: config)
            
        }()
    
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: {
            (data, response, error)  -> Void in
            if (error != nil) {
                print(error as Any)
            } else {
                if let data = data {
                    do {
                        if let dict = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as?
                            [String: AnyObject] {
                            print(dict)
                            if let leaderDict = dict[""] as? JSONDictionary {
                                let leader = Leader(dict: leaderDict)
                                print("Leader")
                                DispatchQueue.main.async(execute: {
                                    leadersArray.append(leader)
                                })
                            }
                        }
                    } catch {
                        print("Could NOT parse")
                    }
                }
            }
        })
        dataTask.resume()
    }
}
