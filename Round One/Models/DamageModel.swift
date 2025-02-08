//
//  HealthModel.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import Foundation

struct DamageModel: Decodable, Encodable{
    var standardDamage: Int
    var commanderDamage: Int
    
    init(standardDamage: Int = 0, commanderDamage: Int = 0) {
        self.standardDamage = standardDamage
        self.commanderDamage = commanderDamage
    }
}
