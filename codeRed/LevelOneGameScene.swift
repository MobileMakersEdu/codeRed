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
        ship = Spaceship(view: view)
        addChild(ship)
        let bug = Bug(positionOne: frame.size.width, yPosition: view.center.y * 2, theScene: self, theSpeed: kBugSlowMovement)
        let proTip = ProTip(positionOne: .Dave, xPosition: frame.size.width, yPosition: view.center.y * 1.5, theScene: self, theSpeed: kBugSlowMovement)
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
