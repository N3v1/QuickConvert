//
//  ContentView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 18.08.23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .Categories
    @State private var isLoading = false
    // Create enum for the Tab bar buttons
    enum Tab {
        case Categories
        case favourite
    }
    
    var body: some View {
        ZStack {
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
            // MARK: - Loading View
            // TODO: Refactor LoadingView
            if isLoading {
                ZStack {
                    Color(.systemBackground)
                        .ignoresSafeArea()
                    VStack {
                        Spacer()
                        
                        Image("QuickConverter_for_doc")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .padding(50)
                        
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle())
                            .scaleEffect(2)
                        
                        Spacer()
                    }
                }
            }
        }
        .onAppear { startFakeNetworkCall() }
    }
    
    // MARK: - UIActivityIndicator on start
    func startFakeNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { 
            isLoading = false
        }
    }
}

#Preview {
        ContentView()
}
