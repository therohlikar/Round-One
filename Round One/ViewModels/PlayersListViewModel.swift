//
//  PlayersListViewModel.swift
//  Round One
//
//  Created by Radek Jeník on 2/7/25.
//

import Foundation

class PlayersListViewModel: ObservableObject {
    @Published var players: [PlayerModel] = []
    
    init(players: [PlayerModel] = []){
        self.players = players
    }
    
    func addPlayer(_ name: String) {
        players.append(PlayerModel(name: name))
    }
}
