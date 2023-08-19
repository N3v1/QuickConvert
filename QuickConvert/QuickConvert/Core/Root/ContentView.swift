//
//  ContentView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 18.08.23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .Categories
    
    // Create enum for the Tab bar buttons
    enum Tab {
        case Categories
        case favourite
    }
    
    var body: some View {
//        NavigationStack {
            TabView(selection: $selection) {
                OptionListView()
                    .tabItem {
                        Label("List", systemImage: "list.bullet")
                    }
                    .tag(Tab.Categories)

                FavouriteView()
                    .tabItem {
                        Label("Favourite", systemImage: "heart")
                    }
                    .tag(Tab.favourite)
            }
//        }
    }
}

#Preview {
        ContentView()
}
