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
                // MARK: -list
                List {
                    Section {
                        ForEach(SettingsOptionsViewModel.allCases) { option in
                            HStack {
                                // TODO: Create Buttons and their pages
                                /*
                                 Hi everyone,
                                 Please make the items clickable, and link to their pages (files see items folder) and the about file see in this folder
                                 
                                 Thanks, NH
                                 */
                                
                                Image(systemName: option.imageName)
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(option.imageBackgroundColor)
                                
                                Text(option.title)
                                    .font(.subheadline)
                            }
                        }
                    }
                    
                    /*
                    Section {
                        Button("Log Out") {
                            
                        }
                        
                        Button("Delete Account") {
                            
                        }
                    }
                    .foregroundColor(.red)
                    .bold()
                    */
                }
            }
            
            // MARK: - Head
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .foregroundColor(.primary)
                                
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
