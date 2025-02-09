//
//  CustomGameOptionsEditorView.swift
//  Round One
//
//  Created by Radek Jeník on 2/9/25.
//

import SwiftUI

struct CustomGameOptionsEditorView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
            VStack {
                Text("GAMEOPTIONSEDITOR.")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .padding()
                    .foregroundStyle(.blue)
                
                Spacer()
            }
        }
    }
}

#Preview {
    CustomGameOptionsEditorView()
}
