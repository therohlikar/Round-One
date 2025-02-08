//
//  Round_OneApp.swift
//  Round One
//
//  Created by Radek Jeník on 2/2/25.
//

import SwiftUI
import SwiftData

@main
struct Round_OneApp: App {
    @AppStorage("colorScheme") private var storedColorScheme: String = "dark"
    @StateObject var toastNotifications: ToastNotificationViewModel = .init()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .preferredColorScheme(storedColorScheme == "dark" ? .dark : .light)
                .environmentObject(toastNotifications)
                .overlay(alignment: .bottom){
                    Spacer()
                    
                    VStack(spacing: 10){
                        ForEach(toastNotifications.toasts) { toast in
                            ToastView(toast: toast)
                                .transition(.opacity)
                                .animation(.easeInOut(duration: 0.25), value: toast.id)
                        }
                    }
                    
                }
        }
    }
}
