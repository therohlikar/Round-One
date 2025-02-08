//
//  PlayerInfoRowView.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import SwiftUI

struct PlayerInfoRowView: View {
    @State var title: String
    @State var value: String
    
    var body: some View {
        VStack(alignment: .center){
            Text("\(title)".uppercased())
                .font(.headline)
                .frame(minWidth: 200)
                .foregroundStyle(.blue)
            
            Text(value)
                .font(.title)
                .fontWeight(.black)
        }
        .padding(.vertical)
    }
}

#Preview {
    PlayerInfoRowView(title: "asdf", value: "asdf")
}
