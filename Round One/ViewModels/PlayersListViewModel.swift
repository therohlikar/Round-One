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
        self.players = loadPlayers()
    }
    
    func addPlayer(_ name: String) {
        players.append(PlayerModel(name: name))
        savePlayers()
    }
    
    func savePlayers() {
        if let encoded = try? JSONEncoder().encode(players) {
            UserDefaults.standard.set(encoded, forKey: "playerslist")
        }
    }
    
    func loadPlayers() -> [PlayerModel] {
        if let data = UserDefaults.standard.data(forKey: "playerslist"),
           let decoded = try? JSONDecoder().decode([PlayerModel].self, from: data) {
            return decoded
        }
        return []
    }
}
