//
//  DataManager.swift
//  sb_2_9
//
//  Created by Артем ШАЛИН on 07.02.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .pop,
        .shake,
        .flash,
        .slideLeft,
        .slideRight,
        .slideUp,
        .slideDown
    ]
    
    let curves: [Spring.AnimationCurve] = [
        .easeIn,
        .linear,
        .easeOut,
        .easeOutExpo
    ]
    
    init() {}
    
}
