//
//  ToastView.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import SwiftUI

struct ToastView: View {
    @State var toast: ToastNotificationModel
    
    var body: some View {
        HStack{
            Image(systemName: "exclamationmark.circle")
                .font(.title3)
                .foregroundStyle(toast.flagColor)
            Text(toast.description)
                .font(.caption)
        }
        .padding(10)
        .background{
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(.white)
                .opacity(0.3)
        }
        .transition(.move(edge: .top).combined(with: .opacity))
    }
}

#Preview {
    ToastView(toast: ToastNotificationModel(title: "Title", description: "Lorem ipsum dolor sit amet", flag: .warning))
}
