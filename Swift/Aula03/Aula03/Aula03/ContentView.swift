//
//  ContentView.swift
//  Aula03
//
//  Created by Student12 on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView{
            Home()
                .tabItem{
                   Label("Home", systemImage: "homekit")
                }.badge(2)
            
            Search()
                .tabItem{
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            Photos()
                .tabItem{
                    Label("Photos", systemImage: "photo.artframe")
                }
            
            Messages()
                .tabItem{
                    Label("Messages",
                    systemImage: "ellipsis.message.fill")
                }.badge("!")
            
            Profile()
                .tabItem{
                    Label("Profile",
                    systemImage: "person.fill")
                }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
