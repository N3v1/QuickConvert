//
//  ContentView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 18.08.23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .home
    
    enum Tab {
        case list
        case home
        case favourite
        case conversion
    }
    
    var body: some View {
        NavigationStack {
            TabView(selection: $selection) {
                OptionsList()
                    .tabItem {
                        Label("List", systemImage: "list.bullet")
                    }
                    .tag(Tab.list)
                
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(Tab.home)

                HomeView()
                    .tabItem {
                        Label("Favourite", systemImage: "heart")
                    }
                    .tag(Tab.favourite)
                
                ConvertionView()
                    .tabItem {
                        Label("Convertion", systemImage: "equal.square.fill")
                    }
                    .tag(Tab.conversion)
                }
            .navigationTitle("QuickConvert")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    ContentView()
}
