//
//  BaseNode.swift
//  codeRed
//
//  Created by Dave Krawczyk on 9/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import SpriteKit
import UIKit

class BaseNode: SKSpriteNode {
   
    
    convenience override init (){
        let atexture = SKTexture(imageNamed: "Spaceship")
        self.init(texture: atexture, color: nil, size:CGSizeMake(100, 100))
        
        
    }
    
    override init(texture: SKTexture!, color: UIColor!, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
