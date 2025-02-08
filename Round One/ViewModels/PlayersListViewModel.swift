//
//  PlayersListViewModel.swift
//  Round One
//
//  Created by Radek Jeník on 2/7/25.
//

import Foundation

class PlayersListViewModel: ObservableObject {
    @Published var players: [PlayerModel] = []
    @Published var selectedPlayer: PlayerModel?
    
    init(players: [PlayerModel] = []){
        self.players = loadPlayers()
    }
    
    func addPlayer(_ name: String) -> String{
        if players.contains(where: { $0.name == name }){
            return "Player with name \(name) already exists."
        }
        
        players.append(PlayerModel(name: name))
        savePlayers()
        return "done"
    }
    
    func removePlayer(_ player: PlayerModel){
        self.players.removeAll(where: { $0.id == player.id })
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
