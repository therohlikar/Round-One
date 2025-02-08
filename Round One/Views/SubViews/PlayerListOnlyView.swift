//
//  PlayerListOnlyView.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import SwiftUI

struct PlayerListOnlyView: View {
    @ObservedObject var plvm: PlayersListViewModel
    @State private var deleteAlertIsPresented: Bool = false
    @EnvironmentObject var toasts: ToastNotificationViewModel
    
    var body: some View {
        ScrollView{
            ForEach(plvm.players) { player in
                VStack(alignment: .leading) {
                    Text(player.name)
                        .font(.system(size: 18, weight: .medium, design: .rounded))
                    Text(player.getId())
                        .font(.caption)
                }
                .padding(8)
                .onTapGesture {
                    plvm.selectedPlayer = player
                }
            }
        }
        .sheet(item: $plvm.selectedPlayer) { player in
            VStack{
                Text("\(player.name).".uppercased())
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .padding(.horizontal)
                    .padding(.top)
                    .foregroundStyle(.blue)
                
                HStack{
                    Text("UUID:")
                        .bold()
                    
                    Spacer()
                    
                    Text("\(player.getId())")
                    
                    Spacer()
                }
                .font(.caption)
                .padding(.horizontal, 30)
                
                VStack (alignment: .trailing){
                    PlayerInfoRowView(title: "Combats", value: player.combats.description)
                    PlayerInfoRowView(title: "Victories", value: player.victories.description)
                    PlayerInfoRowView(title: "Losses", value: player.losses.description)
                }
                .padding(.top)
                
                Spacer()
            }
            .overlay(alignment: .topTrailing){
                Button {
                    deleteAlertIsPresented.toggle()
                } label: {
                    Image(systemName: "trash.fill")
                        .foregroundStyle(.red)
                }
                .padding()
            }
            .alert("Are you sure?", isPresented: $deleteAlertIsPresented) {
                Button("Delete") {
                    let username = player.name
                    plvm.removePlayer(player)
                    
                    toasts.showToast(.init(title: "Player deleted", description: "Player \(username) has been deleted.", flag: .low))
                }
                
                Button("Cancel") {
                    
                }
            } message: {
                Text("Delete action will remove all statistics and history. It cannot be undone.")
            }
        }
    }
}

#Preview {
    PlayerListOnlyView(plvm: PlayersListViewModel(players: [
        PlayerModel(name: "TEST")
    ]))
}
