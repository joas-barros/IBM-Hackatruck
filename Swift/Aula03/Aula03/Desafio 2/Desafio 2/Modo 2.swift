//
//  Modo 2.swift
//  Desafio 2
//
//  Created by Student12 on 11/10/23.
//

import SwiftUI

struct Modo_2: View {
    @State var name: String = ""
    var body: some View {
        NavigationStack{
            VStack{
                Text("Informe seu nome")
                TextField("Nome", text: $name)
                
            }
            NavigationLink(destination: Modo_3(sim: name)){
                Text("Next")
            }

        }
    }
}

struct Modo_2_Previews: PreviewProvider {
    static var previews: some View {
        Modo_2()
    }
}
