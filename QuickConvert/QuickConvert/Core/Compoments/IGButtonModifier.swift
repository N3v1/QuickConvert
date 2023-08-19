//
//  IGButtonModifier.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 19.08.23.
//

import Foundation
import SwiftUI

struct IGButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 360, height: 44)
            .background(Color(.gray)) // .systemBlue
            .cornerRadius(10)
    }
}

