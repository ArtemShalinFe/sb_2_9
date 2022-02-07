//
//  Animation.swift
//  sb_2_9
//
//  Created by Артем ШАЛИН on 07.02.2022.
//

import Foundation

struct Animation {
    
    let name: String
    let curve: String
    let duration: Float
    let delay: Float
    let repeatCount: Float
    
    var description: String {
        """
        name: \(name)
        curve: \(curve)
        duration: \(duration)
        delay: \(delay)
        repeatCount: \(repeatCount)
        """
    }
    
    static func getRandomAnimation() -> Animation {
        
        Animation(
            name: DataManager.shared.animations.shuffled().first?.rawValue ?? "pop",
            curve: DataManager.shared.curves.shuffled().first?.rawValue ?? "linear",
            duration: Float.random(in: 0.5...1),
            delay: Float.random(in: 0.1...0.4),
            repeatCount: Float.random(in: 1.5...3)
        )
    }
    
}
