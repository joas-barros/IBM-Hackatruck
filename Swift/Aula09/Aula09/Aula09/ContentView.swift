//
//  ContentView.swift
//  Aula09
//
//  Created by Student12 on 25/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: AssetsView()){
                    Text("Welcome to UFERSA")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
