//
//  MainView.swift
//  Round One
//
//  Created by Radek Jeník on 2/2/25.
//

import SwiftUI

struct MainView: View {
    @State private var settingsIsPresented: Bool = false
    @AppStorage("colorScheme") private var storedColorScheme: String = "dark"
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
            
            VStack(alignment: .center) {
                Button {
                    //
                } label: {
                    Text("PLAY")
                }
                .font(.system(size: 90, weight: .bold, design: .rounded))
                .foregroundStyle(.blue)
                
                Button {
                    settingsIsPresented.toggle()
                } label: {
                    Text("SETTINGS")
                }
                .font(.system(size: 24, weight: .bold, design: .rounded))
            }
            .padding(40)
        }
        .overlay(alignment: .topTrailing) {
            UserButtonView(currentUser: CurrentUser())
        }
        .sheet(isPresented: $settingsIsPresented) {
            SettingsView()
        }
    }
}

#Preview {
    MainView()
}
