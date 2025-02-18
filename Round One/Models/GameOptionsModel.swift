//
//  GameOptionsModel.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import Foundation

struct GameOptionsModel: Encodable, Decodable, Identifiable {
    var id: String = UUID().uuidString
    var name: String = "standard"
    var maxPlayers: Int = 2
    var baseHealth: Int = 20
    var damageThreshold: Int = 0
    var commanderDamageThreshold: Int = 0
    
    init(name: String = "standard", maxPlayers: Int = 2, baseHealth: Int = 20, damageThreshold: Int = 0, commanderDamageThreshold: Int = 0) {
        self.name = name
        self.maxPlayers = maxPlayers
        self.baseHealth = baseHealth
        self.damageThreshold = damageThreshold
        self.commanderDamageThreshold = commanderDamageThreshold
    }
}
