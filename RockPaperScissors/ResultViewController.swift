//
//  ResultViewController.swift
//  RockPaperScissors
//
//  Created by Gabrielle Miller-Messner on 10/30/14.
//  Copyright (c) 2014 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    var match: RPSMatch!
    
    var message: NSString!
    var picture: UIImage!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewWillAppear(animated:Bool)
    {
        super.viewWillAppear(animated)
        self.messageLabel.text = match.messageResult()
        self.resultImageView.image = UIImage(named: match.imageNameResult())
    }

    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)

        UIView.animateWithDuration(0.6)
        {
            self.resultImageView.alpha = 1;
        }
    }
    
    @IBAction func playAgainButtonPressed(sender: AnyObject)
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
