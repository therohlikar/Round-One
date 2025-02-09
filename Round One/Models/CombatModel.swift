//
//  CombatModel.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import Foundation

struct CombatModel: Encodable, Decodable {
    var id: String = UUID().uuidString
    var players: [CombatPlayerModel] = []
    var winner: CombatPlayerModel?
    var gameStyle: GameModeStyleEnum = .standard
    var gameOptions: GameOptionsModel = GameOptionsModel()
    
    init(id: String = UUID().uuidString, players: [CombatPlayerModel] = [], gameStyle: GameModeStyleEnum = .standard, gameOptions: GameOptionsModel = GameOptionsModel(), winner: CombatPlayerModel? = nil) {
        self.id = id
        self.players = players
        self.gameStyle = gameStyle
        self.gameOptions = gameOptions
        self.winner = winner
    }
    
    mutating func updateGameOptionsBasedOnStyle() {
        if self.gameStyle == .standard {
            self.gameOptions = GameOptionsModel(name: "standard", maxPlayers: 2, baseHealth: 20, damageThreshold: 0, commanderDamageThreshold: 0)
        } else if self.gameStyle == .commander {
            self.gameOptions = GameOptionsModel(name: "commander", maxPlayers: 8, baseHealth: 40, damageThreshold: 0, commanderDamageThreshold: 21)
        }
    }
}
