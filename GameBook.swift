//
//  GameBook.swift
//  ClockMan
//
//  Created by Matheus Manganeli de Macedo on 3/4/15.
//  Copyright (c) 2015 PalasCorp. All rights reserved.
//

import Foundation

struct GameBook {
    
    let gamesArray = [
        "Snake",
        "Flappy Bird",
        "Math Problem",
        "Smash the Button",
        "Memory Game",
        "Pong",
        "7 erros" ]
    
    func randomGame() -> String {
        var unsignedArrayCount = UInt32(gamesArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return gamesArray[randomNumber]
        
    }
}