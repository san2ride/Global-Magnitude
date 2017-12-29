//
//  LeaderBoardVC.swift
//  Global Multiplication
//
//  Created by don't touch me on 12/19/17.
//  Copyright © 2017 trvl, LLC. All rights reserved.
//

import UIKit
import RevealingSplashView

class LeaderBoardVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    var leaderAPI: LeaderBoardAPI!
    var currentLeader: Leader?
    var leadersArray = [Leader]()
    
    let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "multiplication")!, iconInitialSize: CGSize(width: 80, height: 80), backgroundColor: UIColor.white)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Leader Board"
        
        self.view.addSubview(revealingSplashView)
        revealingSplashView.animationType = SplashAnimationType.heartBeat
        revealingSplashView.startAnimation()
        revealingSplashView.duration = 3.0
        
        revealingSplashView.heartAttack = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loadLeaderBoard()
    }

    func loadLeaderBoard() {
        leaderAPI.fetchLeaders { (leaders) -> Void in
            self.leadersArray = leaders
            print(self.leadersArray)
            
            self.tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return leadersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LeaderBoardCell
        
        let leader = leadersArray[indexPath.row]
        cell.configureCell(leader: leader)
        
//        cell.useridLabel.text = leader.userid
//        cell.scoreLabel.text = leader.score
//        cell.mTimeLabel.text = leader.mtime
//        cell.qTimeLabel.text = leader.qtime
        
        return cell
    }
}

//extension LeaderBoardVC: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LeaderBoardCell
//
//        let leader = leadersArray[indexPath.row]
//
//        cell.useridLabel.text = leader.userid
//        cell.scoreLabel.text = leader.score
//        cell.mTimeLabel.text = leader.mtime
//        cell.qTimeLabel.text = leader.qtime
//
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return leadersArray.count
//    }
//}


