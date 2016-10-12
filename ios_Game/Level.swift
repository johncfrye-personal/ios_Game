//
//  Level.swift
//  ios_Game
//
//  Created by John Frye on 10/10/16.
//  Copyright © 2016 John Frye. All rights reserved.
//

import SpriteKit
import GameplayKit

class Level: SKScene {

    var panel: SKSpriteNode? = nil
    var leftButton: SKSpriteNode? = nil
    var rightButton: SKSpriteNode? = nil
    var jumpButton: SKSpriteNode? = nil
    var fireButton: SKSpriteNode? = nil
    var duckButton: SKSpriteNode? = nil

    private var HEIGHT: CGFloat? = nil
    private var WIDTH: CGFloat? = nil

    
    override func didMove(to view: SKView) {
    
        
        HEIGHT = self.size.height
        WIDTH = self.size.width
        
        
        
        panel = SKSpriteNode(color: UIColor(red: CGFloat(0.6), green: CGFloat(0.0), blue: CGFloat(0.45), alpha: CGFloat(1.0)), size: CGSize(width: WIDTH!, height: HEIGHT! / 3.0))
        panel?.position = CGPoint(x: CGFloat(0.0), y: CGFloat(HEIGHT! / -3.0))
        
    
        addChild(panel!)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            print(touch.location(in: self.view))
        }
    }
    
    

    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

