//
//  Bug.swift
//  codeRed
//
//  Created by Dave Krawczyk on 9/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import SpriteKit

class Bug: Obstacle
{
    init(positionOne xPosition: CGFloat, yPosition: CGFloat, theScene: SKScene)
    {
        let color = UIColor()
        let texture = SKTexture(imageNamed: kBugImageName)
        let size = texture.size()
        super.init(texture: texture, color: color, size: size)

        self.position = CGPointMake(xPosition, yPosition)
        theScene.addChild(self)
        speedOne(xPosition, yPosition: yPosition)
    }

    init(positionTwo xPosition: CGFloat, yPosition: CGFloat, theScene: SKScene)
    {
        let color = UIColor()
        let texture = SKTexture(imageNamed: kBugImageName)
        let size = texture.size()
        super.init(texture: texture, color: color, size: size)

        self.position = CGPointMake(xPosition, yPosition)
        theScene.addChild(self)
        speedOne(xPosition, yPosition: yPosition)
    }
    
    init(positionThree xPosition: CGFloat, yPosition: CGFloat, theScene: SKScene)
    {
        let color = UIColor()
        let texture = SKTexture(imageNamed: kBugImageName)
        let size = texture.size()
        super.init(texture: texture, color: color, size: size)

        self.position = CGPointMake(xPosition, yPosition)
        theScene.addChild(self)
        speedOne(xPosition, yPosition: yPosition)
    }

    func speedOne(xPostion: CGFloat, yPosition: CGFloat)
    {
        let actionMove = SKAction.moveTo(CGPointMake(self.size.width/2, yPosition), duration: kBugSlowMovement)

        let actionMoveDone = SKAction.removeFromParent()
        self.runAction(SKAction.sequence([actionMove, actionMoveDone]))
    }

}
