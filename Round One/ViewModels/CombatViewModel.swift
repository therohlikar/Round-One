//
//  CombatViewModel.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import Foundation

class CombatViewModel: ObservableObject {
    @Published var combatModel: CombatModel = .init()
    @Published var customGameOptionsModel: GameOptionsModel = .init()
    
    init() {
        
    }
}
