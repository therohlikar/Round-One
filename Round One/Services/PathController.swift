//
//  PathController.swift
//  Round One
//
//  Created by Radek Jeník on 2/11/25.
//

import Foundation
import SwiftUI

class PathController: ObservableObject {
    @Published var path: NavigationPath
    
    init(_ path: NavigationPath = .init()) {
        self.path = path
    }
    
    func root() {
        path = .init()
    }
}
