//
//  CombatPlayerModel.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import Foundation

struct CombatPlayerModel: Identifiable, Hashable, Encodable, Decodable {
    var id: UUID = UUID()
    var player: PlayerModel
    var damage: DamageModel
    var commander: String?
    
    init(id: UUID = UUID(), player: PlayerModel, damage: DamageModel = DamageModel(), commander: String? = nil) {
        self.id = id
        self.player = player
        self.damage = damage
        self.commander = commander
    }
}
