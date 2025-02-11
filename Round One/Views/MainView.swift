//
//  MainView.swift
//  Round One
//
//  Created by Radek Jeník on 2/2/25.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var toasts: ToastNotificationViewModel
    @EnvironmentObject var path: PathController
    
    @AppStorage("colorScheme") private var storedColorScheme: String = "dark"
    
    var body: some View {
        NavigationStack(path: $path.path) {
            ZStack {
                Color(.systemBackground)
                VStack(alignment: .center) {
                    Button {
                        path.path.append("combatprepare")
                    } label: {
                        Text("PLAY.")
                    }
                    .font(.system(size: 100, weight: .bold, design: .rounded))
                    .foregroundStyle(.blue)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Button {
                                path.path.append("playerslist")
                            } label: {
                                Text("PLAYERLIST.")
                            }
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                            
                            Button {
                                path.path.append("settings")
                            } label: {
                                Text("SETTINGS.")
                            }
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                            
                            Button {
                                path.path.append("history")
                            } label: {
                                Text("HISTORY.")
                            }
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                            
                            Button {
                                path.path.append("gameoptionseditor")
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
                    CustomGameOptionsEditorView()
                }
            }
        }
    }
}

#Preview {
    MainView()
}
