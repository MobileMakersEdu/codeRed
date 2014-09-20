//
//  ProTip.swift
//  codeRed
//
//  Created by Dave Krawczyk on 9/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

enum ProTipMaker : UInt32{
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
    
    
    init(positionOne maker: ProTipMaker)
    {
        self.maker = maker
        let color = UIColor()
        let texture = SKTexture(image: ProTip.imageForMaker(maker))
        let size = texture.size()
        super.init(texture: texture, color: color, size: size)
    }
    
    
    class func imageForMaker(maker: ProTipMaker) -> UIImage {
        
        var imageName : NSString! = "obstacle_"
        switch maker
        {
            case .Dave:
                imageName + "dave"
            case .Don:
                imageName + "don"
            case .Max:
                imageName + "max"
            case .Kevin:
                imageName + "kevin"
            case .Vik:
                imageName + "vik"
            case .Rich:
                imageName + "rich"
        }
        
        return UIImage(named: imageName)
        
    }
   
}
