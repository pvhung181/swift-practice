//
//  Player.swift
//  SampleAppliction
//
//  Created by Pham Viet Hung on 31/10/26.
//

import Foundation

struct Player  : Identifiable{
    let id = UUID()
    
    var name: String = ""
    var score: Int = 0
}
