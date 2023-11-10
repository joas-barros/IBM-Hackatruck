//
//  ContentView.swift
//  Desafio 2
//
//  Created by Student12 on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink("Modo 1", destination: Modo_1())
                NavigationLink("Modo 2", destination: Modo_2())
                NavigationLink("Modo 3", destination: Modo_3())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
