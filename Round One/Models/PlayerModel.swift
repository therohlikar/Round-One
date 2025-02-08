//
//  PlayerModel.swift
//  Round One
//
//  Created by Radek Jeník on 2/7/25.
//

import Foundation

struct PlayerModel: Identifiable, Encodable, Decodable {
    var id: UUID = UUID()
    var name: String
    
    init(name: String = "User") {
        self.name = name
    }
    
    func getId() -> String {
        return "\(self.id)"
    }
}
