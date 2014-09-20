//
//  SpaceShipNode.swift
//  VehicleTest
//
//  Created by Rich Fellure on 9/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import SpriteKit


class Ship: SKSpriteNode{}

class Spaceship: Ship
{

    var touch : UITouch!
    var targetPosition : CGPoint!

    init(view: SKView)
    {
        let color = UIColor()
        let texture = SKTexture(imageNamed: kShipImageName)
        let size = texture.size()
        super.init(texture: texture, color: color, size: size)

        self.xScale = kShipScale
        self.yScale = kShipScale
        self.zRotation = kShipZRotationStandard
        self.position = CGPointMake(kShipXPosition as CGFloat, view.center.y*2)
    }

    func update()
    {
        if touch != nil
        {
            targetPosition = touch.locationInNode(scene)

            if targetPosition.y > self.position.y
            {
                self.zRotation = kShipZRotationUp
            }
            else if targetPosition.y < self.position.y
            {
                self.zRotation = kShipZRotationDown
            }

            self.position = CGPointMake(self.position.x,
                self.targetPosition.y * kShipMovementFilter + self.position.y * kShipMovementInverseFilter)

        }
        else
        {
            self.zRotation = kShipZRotationStandard
        }
        
        
        
    }
    
}
