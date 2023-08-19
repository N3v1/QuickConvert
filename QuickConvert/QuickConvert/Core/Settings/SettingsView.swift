//
//  SettingsView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 19.08.23.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello")
            }
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .foregroundColor(.black)
                                
                }
            }
            .navigationTitle("Settings")
            
        }
    }
}

#Preview {
    SettingsView()
}
