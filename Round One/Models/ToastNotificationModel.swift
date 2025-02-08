//
//  ToastNotificationModel.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import Foundation
import SwiftUI

struct ToastNotificationModel: Identifiable {
    enum FlagType: String, CaseIterable {
        case important
        case warning
        case low
    }
    
    var id: String = UUID().uuidString
    var title: String
    var description: String
    var flag: FlagType
    
    var flagColor: Color {
        switch flag {
            case .important: .red
            case .warning: .yellow
            case .low: .blue
        }
        
    }
    
    init(title: String, description: String, flag: FlagType) {
        self.title = title
        self.description = description
        self.flag = flag
    }
    
    
}
