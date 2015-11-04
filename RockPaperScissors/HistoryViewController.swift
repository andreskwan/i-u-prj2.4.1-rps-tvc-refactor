//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Andres Kwan on 11/3/15.
//  Copyright © 2015 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var history: [RPSMatch]?
    let cellIdentifier = "matchResultCellIdentifier"
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 0
    }
}