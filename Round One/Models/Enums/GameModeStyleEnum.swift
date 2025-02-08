//
//  GameModeStyleEnum.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import Foundation

enum GameModeStyleEnum: String, Encodable, Decodable, CaseIterable, Identifiable{
    var id : String { UUID().uuidString }
    
    case standard
    case commander
    case custom
}
