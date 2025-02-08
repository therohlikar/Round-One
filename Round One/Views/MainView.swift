//
//  MainView.swift
//  Round One
//
//  Created by Radek Jeník on 2/2/25.
//

import SwiftUI

struct MainView: View {
    
    @State private var path = NavigationPath()
    @AppStorage("colorScheme") private var storedColorScheme: String = "dark"
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                Color(.systemBackground)
                
                VStack(alignment: .center) {
                    Button {
                        //
                    } label: {
                        Text("PLAY.")
                    }
                    .font(.system(size: 100, weight: .bold, design: .rounded))
                    .foregroundStyle(.blue)
                    
                    HStack {
                        Button {
                            path.append("playerslist")
                        } label: {
                            Text("PLAYERS")
                        }
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                        
                        Text("-")
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                        
                        Button {
                            path.append("settings")
                        } label: {
                            Text("SETTINGS")
                        }
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                    }
                    
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
                }
            }
        }
    }
}

#Preview {
    MainView()
}
