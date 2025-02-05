//
//  SettingsView.swift
//  Round One
//
//  Created by Radek Jeník on 2/4/25.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var settingsViewModel: SettingsViewModel
    @AppStorage("colorScheme") private var storedColorScheme: String = "dark"
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
            
            VStack {
                Text("SETTINGS MENU")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                
                HStack {
                    Text("Language")
                    Spacer()
                    Text("English")
                }
                .padding()
                
                HStack {
                    Text("Theme")
                    Spacer()
                    Button {
                        storedColorScheme = storedColorScheme == "dark" ? "light" : "dark"
                    } label: {
                        Text(storedColorScheme == "dark" ? "Dark" : "Light")
                    }

                }
                .padding()
                
                Spacer()
            }
            .padding(.horizontal, 30)
        }
        .preferredColorScheme(storedColorScheme == "dark" ? .dark : .light)
    }
}

#Preview {
    SettingsView()
        .environmentObject(SettingsViewModel())
}
