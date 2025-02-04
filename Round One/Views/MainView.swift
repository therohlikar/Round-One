//
//  MainView.swift
//  Round One
//
//  Created by Radek Jeník on 2/2/25.
//

import SwiftUI

struct MainView: View {
    @Environment(\.colorScheme) var colorScheme
    var bgColor: Color {
        colorScheme == .dark ? .black : .white
    }
    
    var body: some View {
        ZStack {
            bgColor
                .edgesIgnoringSafeArea(.all)
            
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
            HStack{
                Button("LOGIN BUTTON"){
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    MainView()
}
