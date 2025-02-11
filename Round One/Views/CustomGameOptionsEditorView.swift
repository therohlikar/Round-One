//
//  CustomGameOptionsEditorView.swift
//  Round One
//
//  Created by Radek Jeník on 2/9/25.
//

import SwiftUI

struct CustomGameOptionsEditorView: View {
    @Binding var gameOptions: CustomGameOptionsViewModel
    @EnvironmentObject var pc: PathController
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
            VStack {
                Text("GAMEOPTIONSEDITOR.")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .padding()
                    .foregroundStyle(.blue)
                
                if gameOptions.storedGameOptions.isEmpty {
                    Text("No custom games options defined yet.")
                        .font(.system(size: 24, weight: .medium, design: .rounded))
                        .padding()
                } else {
                    ScrollView{
                        ForEach(gameOptions.storedGameOptions) { option in
                            VStack(alignment: .leading) {
                                Text(option.name)
                                    .font(.system(size: 18, weight: .medium, design: .rounded))
                            }
                            .padding(8)
                        }
                    }
                }
                
                Spacer()
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    pc.path.append("newgameoption")
                } label: {
                    Text("+")
                        .font(.title)
                }
            }
        }
    }
}
