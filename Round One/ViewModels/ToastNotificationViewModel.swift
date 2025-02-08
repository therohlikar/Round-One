//
//  ToastNotificationViewModel.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import SwiftUI

class ToastNotificationViewModel: ObservableObject {
    @Published var toasts: [ToastNotificationModel] = []
    
    init(toasts: [ToastNotificationModel] = []) {
        self.toasts = toasts
    }
    
    func showToast(_ toast: ToastNotificationModel) {
        if self.toasts.count > 5 {
            self.toasts.removeFirst()
        }
        DispatchQueue.main.async {
            self.toasts.append(toast)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.toasts.removeAll { $0.id == toast.id }
        }
    }
}
