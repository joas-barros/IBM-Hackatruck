//
//  ContentView.swift
//  Aula01
//
//  Created by Student12 on 09/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("caminhao 1")
                .resizable()
                .scaledToFit()
            Text("HackaTruck")
                .foregroundColor(Color.blue)
            HStack{
                Text("Maker")
                    .foregroundColor(Color.yellow)
                Text("Space")
                    .foregroundColor(Color.red)
            }
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
