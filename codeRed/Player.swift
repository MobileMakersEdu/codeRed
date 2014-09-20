//
//  Player.swift
//  codeRed
//
//  Created by Dave Krawczyk on 9/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import SpriteKit

class Player {

    enum ColliderType: UInt32 {
        case Player = 1
        case Bug = 2
        case GoodChallenge = 4
        case ProTip = 8
    }
   
    var livesLeft = kPlayerStartingLives
    var name : String? = nil
    var genderIsMale = false
    
}
