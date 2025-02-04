//
//  MainView.swift
//  Round One
//
//  Created by Radek Jeník on 2/2/25.
//

import SwiftUI

struct MainView: View {    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            TextField("Username", text: .constant(""))
                .padding(.vertical)
            
            SecureField("Password", text: .constant(""))
                .padding(.vertical)
            
            Button(action: {
                //LOGIN
            }) {
                Text("Login")
            }
            .padding(.vertical)
            
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    MainView()
}
