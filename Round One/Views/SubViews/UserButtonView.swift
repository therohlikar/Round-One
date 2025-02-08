//
//  UserButtonView.swift
//  Round One
//
//  Created by Radek Jeník on 2/4/25.
//

import SwiftUI


struct UserButtonView: View {
    @State var currentUser: CurrentUserController
    
    var body: some View {
        VStack{
            Image(systemName: "person.crop.circle")
                .foregroundStyle(.secondary)
            
            Text(currentUser.getUsername())
                .font(.caption)
        }
        .padding()
    }
}

#Preview {
    UserButtonView(currentUser: CurrentUserController())
}
