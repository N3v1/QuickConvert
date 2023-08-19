//
//  OptionListView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 19.08.23.
//

import SwiftUI

struct OptionListView: View {
    @State private var settingsAreShown = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello Measures")
            }
            .fullScreenCover(isPresented: $settingsAreShown) {
                                SettingsView()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        settingsAreShown.toggle()
                    } label: {
                        Image(systemName: "gearshape")
                            .resizable()
                            .frame(width: 25, height: 25)
                            //.foregroundStyle(.black, Color(.systemGray5))
                            .foregroundColor(.primary)
                    }
                }
            }
            .navigationTitle("Welcome")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    OptionListView()
}
