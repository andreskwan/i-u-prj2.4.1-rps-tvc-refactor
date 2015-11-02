//
//  SingleMatch.swift
//  RockPaperScissors
//
//  Created by Jason on 11/14/14.
//  Copyright (c) 2014 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation

// The RPSMatch struct stores the results of a match.
// Now we're ready to store multiple matches in an array, so users can track their match history.
struct RPSMatch {
    
    let p1: RPS
    let p2: RPS
    
    
    init(p1: RPS, p2: RPS) {
        self.p1 = p1
        self.p2 = p2
    }
    
    var winner: RPS {
        get {
            return p1.defeats(p2) ? p1 : p2
        }
    }
    
    var loser: RPS {
        get {
            return p1.defeats(p2) ? p2 : p1
        }
    }
    
    //tie condition should be here too - to make VC independent of the model
    var isAtie: Bool {
        get {
            return p1.tieWith(p2)
        }
    }
    
    func messageResult() -> String {
        // Handle the tie
        if isAtie {
            return WLT.Tie.description
        }
        
        // Here we build up the results message "RockCrushesScissors. You Win!" etc.
        return winner.description + " " + winner.victoryModeString() + " " + loser.description + ". " + resultString()
    }
    
    func resultString() -> String {
        return p1.defeats(p2) ? WLT.Win.description : WLT.Lose.description
    }
    
    func imageNameResult() -> String {
        if isAtie {
            return RPS.imageNameForATie()
        } else {
            return winner.victoryImageName()
        }

    }

}