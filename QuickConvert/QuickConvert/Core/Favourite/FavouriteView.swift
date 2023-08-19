//
//  FavouriteView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 19.08.23.
//

import SwiftUI

struct FavouriteView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello Favourite")
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            }
            .navigationTitle("Favourite")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    FavouriteView()
}
