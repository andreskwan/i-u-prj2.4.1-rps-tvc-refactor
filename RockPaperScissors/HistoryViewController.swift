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
    var history: [RPSMatch]!
    let cellIdentifier = "matchResultCellIdentifier"
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //what should happen if user hit the history button and there is not game played yet?
        return history!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //1 obtain(dequeue) the cell from the tableView with indexPath
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
        //2 prepare data to be used in the cell
        let match = history[indexPath.row]
        //3 add data to the cell 
        cell.textLabel?.text = match.messageResult()//match.resultString()
        //if it got it display if not do nothing
        cell.detailTextLabel?.text = match.messageResult()
        cell.imageView?.image = UIImage(named: match.imageNameResult())
        return cell
    }
    @IBAction func keepPlayingButton(sender: UIButton) {
        if let navigationController = self.navigationController {
            navigationController.popToRootViewControllerAnimated(true)
        }
    }
}