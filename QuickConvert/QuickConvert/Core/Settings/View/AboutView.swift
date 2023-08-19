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
            Text("Hello About")
            
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
                .navigationTitle("About")
        }
    }
}

#Preview {
    AboutView()
}
