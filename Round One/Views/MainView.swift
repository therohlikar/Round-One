//
//  MainView.swift
//  Round One
//
//  Created by Radek Jeník on 2/2/25.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var toasts: ToastNotificationViewModel
    @EnvironmentObject var pc: PathController
    @State private var gameOptions: CustomGameOptionsViewModel = .init()
    
    @AppStorage("colorScheme") private var storedColorScheme: String = "dark"
    
    var body: some View {
        NavigationStack(path: $pc.path) {
            ZStack {
                Color(.systemBackground)
                VStack(alignment: .center) {
                    Button {
                        pc.path.append("combatprepare")
                    } label: {
                        Text("PLAY.")
                    }
                    .font(.system(size: 100, weight: .bold, design: .rounded))
                    .foregroundStyle(.blue)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Button {
                                pc.path.append("playerslist")
                            } label: {
                                Text("PLAYERLIST.")
                            }
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                            
                            Button {
                                pc.path.append("settings")
                            } label: {
                                Text("SETTINGS.")
                            }
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                            
                            Button {
                                pc.path.append("history")
                            } label: {
                                Text("HISTORY.")
                            }
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                            
                            Button {
                                pc.path.append("gameoptionseditor")
                            } label: {
                                Text("GAMEOPTIONSEDITOR.")
                            }
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                        }
                        
                        Spacer()
                    }
                    .padding(.leading, 30)
                }
                .padding(40)
            }
//            .overlay(alignment: .topTrailing) {
//                UserButtonView(currentUser: CurrentUser())
//            }
            .navigationDestination(for: String.self) { dest in
                if dest == "playerslist" {
                    PlayersListView()
                } else if dest == "settings" {
                    SettingsView()
                } else if dest == "combatprepare" {
                    CombatPrepareView()
//                    CombatDeskView(playerData: [
//                        CombatPlayerModel(player: PlayerModel(name: "Player 1")),
//                        CombatPlayerModel(player: PlayerModel(name: "Player 2")),
//                        CombatPlayerModel(player: PlayerModel(name: "Player 3"))
//                    ])
                }else if dest == "gameoptionseditor" {
                    CustomGameOptionsEditorView(gameOptions: $gameOptions)
                }else if dest == "newgameoption" {
                    AddCustomGameOptionView(gameOptions: $gameOptions)
                }
            }
        }
    }
}

#Preview {
    MainView()
}
