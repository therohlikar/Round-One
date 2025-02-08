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
    @EnvironmentObject var toasts: ToastNotificationViewModel
    
    @State private var newPlayerUsernameInputShow: Bool = false
    @State private var newPlayerUsername: String = ""
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
            
            VStack {
                Text("PLAYERLIST.")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .padding()
                    .foregroundStyle(.blue)
                
                if plvm.players.isEmpty {
                    Text("No players yet.")
                        .font(.system(size: 24, weight: .medium, design: .rounded))
                        .padding()
                }else{
                    PlayerListOnlyView(plvm: plvm)
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    newPlayerUsernameInputShow.toggle()
                } label: {
                    Text("+")
                        .font(.title)
                }
                .alert("Enter player's name:", isPresented: $newPlayerUsernameInputShow) {
                    TextField("Username", text: $newPlayerUsername)
                    Button {
                        let error = plvm.addPlayer(newPlayerUsername)
                        if error != "done"{
                            toasts.showToast( ToastNotificationModel(title: "Same username", description: "This username is already taken", flag: .important))
                        }
                    } label: {
                        Text("Add new player")
                    }
                }
            }
        }
    }
}

#Preview {
    PlayersListView()
}
