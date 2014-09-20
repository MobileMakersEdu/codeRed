//
//  SpaceShipNode.swift
//  VehicleTest
//
//  Created by Rich Fellure on 9/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import SpriteKit
let kShipName = "Spaceship"
let kShipZRotationUp = -1.2 as CGFloat
let kShipZRotationDown = -1.8 as CGFloat
let kShipZRotationStandard = -1.6 as CGFloat
let kFilter = 0.1 as CGFloat
let kInverseFilter = 1.0 - kFilter as CGFloat
let kScale = 0.5 as CGFloat
let kXPostion = 100 as CGFloat

class Ship: SKSpriteNode{}

class Spaceship: Ship
{

    var touch : UITouch!
    var targetPosition : CGPoint!

    init(view: SKView)
    {
        let color = UIColor()
        let texture = SKTexture(imageNamed: kShipName)
        let size = texture.size()
        super.init(texture: texture, color: color, size: size)

        self.xScale = kScale
        self.yScale = kScale
        self.zRotation = kShipZRotationStandard
        self.position = CGPointMake(kXPostion, view.center.y*2)
    }

    func update()
    {
        if touch != nil
        {
            targetPosition = touch.locationInNode(scene)

            let filter = kFilter
            let inverseFilter = kInverseFilter

            if targetPosition.y > self.position.y
            {
                self.zRotation = kShipZRotationUp
            }
            else if targetPosition.y < self.position.y
            {
                self.zRotation = kShipZRotationDown
            }

            self.position = CGPointMake(self.position.x,
                self.targetPosition.y * filter + self.position.y * inverseFilter)

        }
        else
        {
            self.zRotation = kShipZRotationStandard
        }
        
        
        
    }
    
}
