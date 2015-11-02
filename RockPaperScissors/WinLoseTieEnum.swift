//
//  WinLoseTieEnum.swift
//  RockPaperScissors
//
//  Created by Andres Kwan on 11/2/15.
//  Copyright © 2015 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation

enum WLT {
    case Win
    case Lose
    case Tie
    
    var description: String {
        get {
            switch (self) {
            case .Win:
                return "You Win!"
            case .Lose:
                return "You Lose!"
            case .Tie:
                return "It's a tie!"
            }
        }
    }
}