//
//  GameScene.swift
//  TestGame
//
//  Created by David Hakopian on 2014-11-26.
//  Copyright (c) 2014 David Hakopian. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var bird = SKSpriteNode()
    var ground = SKSpriteNode()
    var bg = SKSpriteNode()
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        self.physicsWorld.gravity = CGVectorMake(0, -5);
        
        var BirdTexture = SKTexture(imageNamed: "bird")
        
        BirdTexture.filteringMode = SKTextureFilteringMode.Nearest
        
        bird = SKSpriteNode(texture: BirdTexture)
        
        bird.setScale(2)
        bird.position = CGPoint(x: self.frame.width*0.35, y: frame.size.height*0.6)
        
        bird.physicsBody = SKPhysicsBody(circleOfRadius: bird.size.height/2)
        bird.physicsBody?.dynamic = true
        bird.physicsBody?.allowsRotation = false
        
        //ground
        
        var GroundTexture = SKTexture(imageNamed: "ground")
        
        GroundTexture.filteringMode = SKTextureFilteringMode.Nearest
        
        ground = SKSpriteNode(texture: GroundTexture)
        
        ground.setScale(1.5)
        ground.position = CGPoint(x: self.frame.width*0.5, y: self.frame.height*0)
        
        ground.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(self.frame.size.width, GroundTexture.size().height*1.45))
        ground.physicsBody?.dynamic = false
        
        //background
        
        var BgTexture = SKTexture(imageNamed: "nightbg")
        BgTexture.filteringMode = SKTextureFilteringMode.Nearest
        
        bg = SKSpriteNode(texture: BgTexture)
        bg.setScale(1.5)
        bg.position = CGPoint(x: self.frame.width/2, y: self.frame.height/2)
        
        //add children
        
        self.addChild(bg)
        self.addChild(bird)
        self.addChild(ground)
        
        
        
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            
            let location = touch.locationInNode(self)
            
            bird.physicsBody?.velocity = CGVectorMake(0, 0)
            
            bird.physicsBody?.applyImpulse(CGVectorMake(0, 25))
            
        }
        
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
