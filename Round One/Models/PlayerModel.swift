//
//  PlayerModel.swift
//  Round One
//
//  Created by Radek Jeník on 2/7/25.
//

import Foundation

struct PlayerModel: Identifiable, Hashable, Encodable, Decodable {
    var id: UUID = UUID()
    var name: String
    var victories: Int = 0
    var losses: Int = 0
    var combats: Int = 0
    
    init(name: String = "User") {
        self.name = name
    }
    
    func getId() -> String {
        return "\(self.id)"
    }
}
