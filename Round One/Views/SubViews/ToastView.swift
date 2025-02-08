//
//  ToastView.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import SwiftUI

struct ToastView: View {
    @Environment(\.colorScheme) var colorScheme
    @State var toast: ToastNotificationModel
    
    var body: some View {
        HStack{
            Image(systemName: "exclamationmark.circle")
                .font(.title3)
                .foregroundStyle(toast.flagColor)
            Spacer()
            
            Text(toast.description)
                .font(.caption)
            
            Spacer()
        }
        .padding(5)
        .background{
            RoundedRectangle(cornerRadius: 25)
                .frame(minWidth: 300)
                .foregroundStyle(toast.flagColor)
                .opacity(0.3)
        }
        .transition(.move(edge: .top).combined(with: .opacity))
    }
}

#Preview {
    ToastView(toast: ToastNotificationModel(title: "Title", description: "Lorem ipsum dolor sit amet", flag: .low))
}
