//
//  ContentView.swift
//  test
//
//  Created by Student12 on 09/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .cornerRadius(15)
            Text("Hello, world!")
            Text("Hello, world!")

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
