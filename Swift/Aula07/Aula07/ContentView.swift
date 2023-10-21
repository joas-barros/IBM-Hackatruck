//
//  ContentView.swift
//  Aula07
//
//  Created by Student12 on 20/10/23.
//

import SwiftUI

struct ContentView: View {
    var menus = ["Assets", "Rates", "Exchanges", "Markets", "Candles"]
    var body: some View {
        NavigationStack {
            VStack{
                NavigationLink(destination: AssetsView()){
                    Text("Botao")
                }
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
