//
//  MainView.swift
//  Round One
//
//  Created by Radek Jeník on 2/2/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
            
            VStack(alignment: .center) {
                Button {
                    //
                } label: {
                    Text("PLAY")
                }
                .font(.system(size: 90, weight: .bold, design: .rounded))
                HStack(alignment: .center){
                    Button {
                        //
                    } label: {
                        Text("OPTIONS")
                    }
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                }
            }
            .padding(40)
        }
        .overlay(alignment: .topTrailing) {
            UserButtonView(currentUser: CurrentUser())
        }
    }
}

#Preview {
    MainView()
}
