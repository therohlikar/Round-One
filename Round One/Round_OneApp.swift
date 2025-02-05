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
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .preferredColorScheme(storedColorScheme == "dark" ? .dark : .light)
        }
    }
}
