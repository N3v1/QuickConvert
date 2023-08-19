//
//  SettingsOptionViewModel.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 19.08.23.
//

import Foundation
import SwiftUI

enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
    case darkMode
    case accessibility
    case about
    
    var title: String {
        switch self {
        case .darkMode: return "Dark mode"
        case .accessibility: return "Accessibility"
        case .about: return "About"
        }
    }
    
    var imageName: String {
        switch self {
        case .darkMode: return "moon.circle.fill"
        case .accessibility: return "person.circle.fill"
        case .about: return "wallet.pass.fill"
        }
    }
    
    var imageBackgroundColor: Color {
        switch self {
        case .darkMode: return .primary
        case .accessibility: return .blue
        case .about: return .yellow
        }
    }
    
    var id: Int { return self.rawValue }
}
