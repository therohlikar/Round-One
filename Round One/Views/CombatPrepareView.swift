//
//  CombatPrepareView.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import SwiftUI

struct CombatPrepareView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
            VStack {
                Text("COMBATPREPARE.")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .padding()
                    .foregroundStyle(.blue)
                
                Spacer()
            }
        }
    }
}

#Preview {
    CombatPrepareView()
}
