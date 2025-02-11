//
//  AddCustomGameOptionView.swift
//  Round One
//
//  Created by Radek Jeník on 2/11/25.
//

import SwiftUI

struct AddCustomGameOptionView: View {
    @EnvironmentObject var pc: PathController
    @Binding var gameOptions: CustomGameOptionsViewModel
    @State private var customGameOption: GameOptionsModel = .init()
    
    var body: some View {
        VStack {
            Text("Add custom game option")
            TextField("Name", text: $customGameOption.name)
                .padding()
            
            Stepper(value: $customGameOption.maxPlayers, in: 2...20) {
                Text("Max players: \(customGameOption.maxPlayers.description)")
            }
            .padding()
            
            Stepper(value: $customGameOption.damageThreshold, in: 0...40) {
                Text("Damage threshold: \(customGameOption.damageThreshold.description)")
            }
            .padding()
            
            Stepper(value: $customGameOption.commanderDamageThreshold, in: 0...40) {
                Text("Commander damage threshold: \(customGameOption.commanderDamageThreshold.description)")
            }
            .padding()
            
            Button("Add") {
                gameOptions.addGameOption(customGameOption)
                pc.path.removeLast()
            }
        }
    }
}
