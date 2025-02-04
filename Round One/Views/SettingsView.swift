//
//  SettingsView.swift
//  Round One
//
//  Created by Radek Jeník on 2/4/25.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.colorScheme) var colorScheme
    
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
                        
                    } label: {
                        Text(colorScheme == .dark ? "Dark" : "Light")
                    }

                }
                .padding()
                
                Spacer()
            }
            .padding(.horizontal, 30)
        }
        
    }
}

#Preview {
    SettingsView()
        .colorScheme(.dark)
}
