//
//  PlayerModel.swift
//  Round One
//
//  Created by Radek Jeník on 2/7/25.
//

import Foundation

struct PlayerModel: Hashable, Encodable, Decodable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
