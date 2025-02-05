//
//  SettingsController.swift
//  Round One
//
//  Created by Radek Jeník on 2/4/25.
//

import Foundation
import SwiftUICore
import SwiftUI

class SettingsController{
    private var defaults = UserDefaults.standard

    
    init(defaults: UserDefaults = UserDefaults.standard) {
        self.defaults = defaults
    }
}
