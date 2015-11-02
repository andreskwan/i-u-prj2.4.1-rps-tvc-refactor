//
//  RPS
//  RockPaperScissors
//
//  Created by Jason on 11/14/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import Foundation

// The RPS enum represents a move.

enum RPS {
    case Rock, Paper, Scissors

    // The init method randomly generates the opponent's move
    init() {
        switch arc4random() % 3 {
        
        case 0:
            self = .Rock
        case 1:
            self = .Paper
        default:
            self = .Scissors
        }
    }

    //Could be private - only to be used here - tie by returned value 
    //- but is not clear
    func tieWith(opponent: RPS) -> Bool {
        return self == opponent ? true : false
    }
    
    // The defeats method defines the hierarchy of moves, Rock defeats Scissors etc. 
    func defeats(opponent: RPS) -> Bool {
        switch (self, opponent) {
        case (.Paper, .Rock), (.Scissors, .Paper), (.Rock, .Scissors):
            return true;
        default:
            return false;
        }
    }
    
    static func imageNameForATie() -> String {
        return "itsATie"
    }
}

extension RPS: CustomStringConvertible {
    
    var description: String {
        get {
            switch (self) {
            case .Rock:
                return "Rock"
            case .Paper:
                return "Paper"
            case .Scissors:
                return "Scissors"
            }
        }
    }
    
    func victoryModeString() -> String {
        switch (self) {
        case .Rock:
            return "crushes"
        case .Scissors:
            return "cuts"
        case .Paper:
            return "covers"
        }
    }
    
    func victoryImageName() -> String {
        // I need the case for tie
        // how a "nil" winner affects the encapsulation
        // it means that there are three states in a game
        // win, lose & tie what about if I define those sates 
        // with enums? no place for ambiguity!
        var name = ""
        //Castores ask for None condition
        switch (self) {
        case .Rock:
            name = "RockCrushesScissors"
        case .Paper:
            name = "PaperCoversRock"
        case .Scissors:
            name = "ScissorsCutPaper"
        }
        return name
    }
}

