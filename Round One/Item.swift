//
//  Item.swift
//  Round One
//
//  Created by Radek Jeník on 2/2/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
