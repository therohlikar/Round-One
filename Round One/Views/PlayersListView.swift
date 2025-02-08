//
//  PlayersListView.swift
//  Round One
//
//  Created by Radek Jeník on 2/7/25.
//

import SwiftUI

struct PlayersListView: View {
    @AppStorage("colorScheme") private var storedColorScheme: String = "dark"
    @ObservedObject private var plvm: PlayersListViewModel = .init()
    
    @State private var newPlayerUsernameInputShow: Bool = false
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
            
            VStack {
                Text("PLAYERSLIST.")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .padding()
                    .foregroundStyle(.blue)
                
                if plvm.players.isEmpty {
                    Text("No players yet.")
                        .font(.system(size: 24, weight: .medium, design: .rounded))
                        .padding()
                }else{
                    List{
                        ForEach(plvm.players, id: \.self) { player in
                            Text(player.name)
                                .font(.system(size: 18, weight: .medium, design: .rounded))
                                .padding(8)
                        }
                        .onDelete(perform: deletePlayer)
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    plvm.addPlayer("Another user")
                } label: {
                    Text("+")
                        .font(.title)
                }

            }
        }
    }
    
    func deletePlayer(at offsets: IndexSet) {
        plvm.removePlayer(offsets)
    }
}

#Preview {
    PlayersListView()
}
