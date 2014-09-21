//
//  GameScene.swift
//  codeRed
//
//  Created by Dave Krawczyk on 9/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import SpriteKit

class LevelOneGameScene: SKScene
{
    var ship : Spaceship!

    override func didMoveToView(view: SKView)
    {
        ship = Spaceship(theScene: self)
        let bug = Bug(positionOne: frame.size.width, yPosition: view.center.y * 2, theScene: self, theSpeed: kBugSlowMovement)
        let proTip = ProTip(positionOne: .Dave, xPosition: frame.size.width, yPosition: view.center.y * 1.5, theScene: self, theSpeed: kBugSlowMovement)
        let goodChallenge = GoodChallenge(positionOne: frame.size.width, yPosition: view.center.y * 1.3, theSpeed: kBugSlowMovement, theScene: self)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent)
    {
        ship.touch = touches.anyObject() as UITouch
    }

    override func touchesEnded(touches: NSSet, withEvent event: UIEvent)
    {
        ship.touch = nil
    }
   
    override func update(currentTime: CFTimeInterval)
    {
        ship.update()
    }
}
