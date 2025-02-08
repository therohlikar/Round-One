//
//  CombatDeskView.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import SwiftUI

struct CombatDeskView: View {
    var playerData: [CombatPlayerModel]
    
    var body: some View {
        VStack (spacing: 0){
            ForEach(Array(playerData.enumerated()), id: \.element.id) { index, player in
                
                HStack(spacing: 0){
                    Text(player.player.name)
                        .font(.largeTitle)
                        .bold()
                }
                .padding(.vertical, 30)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.byPlayerOrder(index))
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    CombatDeskView(playerData: [
        CombatPlayerModel(player: PlayerModel(name: "Test")),
        CombatPlayerModel(player: PlayerModel(name: "Test2")),
        CombatPlayerModel(player: PlayerModel(name: "Test3"))
    ])
}
