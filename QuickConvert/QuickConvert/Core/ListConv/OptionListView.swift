//
//  OptionListView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 19.08.23.
//

import SwiftUI

struct OptionListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello Measures")
            }
            .navigationTitle("Welcome")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    OptionListView()
}
