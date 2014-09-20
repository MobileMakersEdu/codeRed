//
//  GameScene.swift
//  codeRed
//
//  Created by Dave Krawczyk on 9/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import SpriteKit

class GameScene: SKScene
{
    var ship : Spaceship!

    override func didMoveToView(view: SKView)
    {
        ship = Spaceship(view: view)
        addChild(ship)
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
