//
//  ColorRandomExtension.swift
//  Round One
//
//  Created by Radek Jeník on 2/8/25.
//

import Foundation
import SwiftUI

public extension Color {
    static func random(randomOpacity: Bool = false) -> Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            opacity: randomOpacity ? .random(in: 0...1) : 1
        )
    }
    
    static func byPlayerOrder(_ orderNumber: Int = 0) -> Color {
        switch orderNumber {
            case 0:
                return .red
            case 1:
                return .blue
            case 2:
                return .orange
            case 3:
                return .yellow
            case 4:
                return .green
            case 5:
                return .purple
            case 6...:
                return .random()
            default:
                return .random()
        }
    }
}
