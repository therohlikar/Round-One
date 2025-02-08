//
//  CombatModel.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import Foundation

struct CombatModel: Encodable, Decodable {
    var id: UUID = UUID()
    var players: [CombatPlayerModel] = []
    var winner: CombatPlayerModel?
    var gamestyle: GameModeStyleEnum = .standard
    
    init(id: UUID, players: [CombatPlayerModel], gamestyle: GameModeStyleEnum = .standard, winner: CombatPlayerModel? = nil) {
        self.id = id
        self.players = players
        self.gamestyle = gamestyle
        self.winner = winner
    }
}
