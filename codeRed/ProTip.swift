//
//  ProTip.swift
//  codeRed
//
//  Created by Dave Krawczyk on 9/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

enum ProTipMaker : UInt32
{
    case Dave
    case Rich
    case Vik
    case Don
    case Kevin
    case Max
}

import SpriteKit
import UIKit

class ProTip: Obstacle {
    
    var maker: ProTipMaker! = nil
    
    
    init(positionOne maker: ProTipMaker, xPosition: CGFloat, yPosition: CGFloat, theScene: SKScene, theSpeed: NSTimeInterval)
    {
        self.maker = maker
        let color = UIColor()
        let texture = SKTexture(image: ProTip.imageForMaker(maker))
        let size = texture.size()
        super.init(texture: texture, color: color, size: size)

        self.position = CGPointMake(xPosition, yPosition)
        theScene.addChild(self)

        speed(theSpeed, yPosition: yPosition)
    }
    
    
    class func imageForMaker(maker: ProTipMaker) -> UIImage {
        
        var imageName : NSString! = "obstacle_"
        switch maker
        {
            case .Dave:
                imageName + kProOneImage
            case .Don:
                imageName + kProTwoImage
            case .Max:
                imageName + kProThreeImage
            case .Kevin:
                imageName + kProFourImage
            case .Vik:
                imageName + kProFiveImage
            case .Rich:
                imageName + kProSixImage
        }
        
        return UIImage(named: imageName)
        
    }

    //MARK: Speed Methods

    func speed(speed: NSTimeInterval, yPosition: CGFloat)
    {
        let actionMove = SKAction.moveTo(CGPointMake(self.size.width/2, yPosition), duration: speed)
        let actionMoveDone = SKAction.removeFromParent()
        self.runAction(SKAction.sequence([actionMove, actionMoveDone]))
    }
}


















