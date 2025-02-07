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
    
    @State private var selectedOption: String = "Always"
    let options: [String] = ["Always", "Ask before saving", "Never"]
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
            
            VStack {
                Text("SETTINGS.")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .padding()
                    .foregroundStyle(.blue)
                
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
                
                HStack {
                    Text("Saving methods")
                    Spacer()
                    Button {
                        //
                    } label: {
                        Picker("", selection: $selectedOption) {
                            ForEach(options, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.menu)
                    }
                }
                .padding()
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    SettingsView()
        .environmentObject(SettingsViewModel())
}
