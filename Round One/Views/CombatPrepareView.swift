//
//  CombatPrepareView.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import SwiftUI

struct CombatPrepareView: View {
    @ObservedObject var combatViewModel: CombatViewModel = CombatViewModel()
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
            VStack {
                Text("PREPARECOMBAT.")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .padding()
                    .foregroundStyle(.blue)
                
                Text("Select game style")
                
                HStack{
                    ForEach(GameModeStyleEnum.allCases) { style in
                        RoundedRectangle(cornerRadius: 18)
                            .fill(Color.blue.opacity( combatViewModel.combatModel.gameStyle == style ? 1 : 0.4))
                            .frame(maxHeight: 150)
                            .overlay {
                                Text("\(style.rawValue)")
                                    .textCase(.uppercase)
                                    .fontWeight(.black)
                            }
                            .onTapGesture {
                                combatViewModel.combatModel.gameStyle = style
                                if style != .custom {
                                    combatViewModel.combatModel.updateGameOptionsBasedOnStyle()
                                }else{
                                    combatViewModel.combatModel.gameOptions = combatViewModel.customGameOptionsModel
                                }
                            }
                    }
                }
                
                VStack{
                    HStack{
                        Text("Base HP")
                        Spacer()
                        
                        Text(combatViewModel.combatModel.gameOptions.baseHealth.description)
                            .fontWeight(.black)
                    }
                    
                    HStack{
                        Text("Commander DMG Threshold")
                        Spacer()
                        
                        Text(combatViewModel.combatModel.gameOptions.commanderDamageThreshold.description)
                            .fontWeight(.black)
                    }
                    
                    HStack{
                        Text("DMG Threshold")
                        Spacer()
                        
                        Text(combatViewModel.combatModel.gameOptions.damageThreshold.description)
                            .fontWeight(.black)
                    }
                    
                    HStack{
                        Text("Max players")
                        Spacer()
                        
                        Text(combatViewModel.combatModel.gameOptions.maxPlayers.description)
                            .fontWeight(.black)
                    }
                }
                .padding()
                
                VStack {
                    Text("PLAYERSELECTION.")
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                        .padding()
                        .foregroundStyle(.blue)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    CombatPrepareView()
}
