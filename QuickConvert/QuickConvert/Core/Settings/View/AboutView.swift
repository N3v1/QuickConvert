//
//  AboutView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 19.08.23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to the Quick Convert About Section! Click on the buttons below to go a certain page. If you want to contribute to this app, click on the Contributers button.")
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
            }
            .padding()
            
            // acknowledgements
            Button(action: {
                // TODO: - link AcknowledgementsView()
            }, label: {
                Text("Acknowledgements")
                    .bold()
                    .modifier(IGButtonModifier())
            })
            
            // contributers
            Button(action: {

            }, label: {
                Text("Contributers")
                    .bold()
                    .modifier(IGButtonModifier())
            })
            
            Spacer()
            
            .navigationTitle("About")
            
        }
    }
}

#Preview {
    AboutView()
}
