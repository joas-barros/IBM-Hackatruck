//
//  Projeto3.swift
//  Aula01
//
//  Created by Student12 on 09/10/23.
//

import SwiftUI

struct Projeto3: View {
    @State private var name: String = "Fulano"
    @State private var showingAlert = false
    var body: some View {
            ZStack{
                Image("caminhao 1")
                    .opacity(0.3)
                
                VStack(){
                    
                    Text("Bem vindo, \(name)")
                    TextField("Digite seu nome: ", text: $name)
                    Spacer()
                    Image("logo").resizable()
                        .scaledToFit()
                    Image("truck")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    Button("Entrar"){
                        showingAlert = true
                    }.alert("Important action", isPresented: $showingAlert) {
                        Button("OK", role: .cancel){}
                    }
                }.frame(width: 280.0, height: 280.0)
            }
    }
}



struct Projeto3_Previews: PreviewProvider {
    static var previews: some View {
        Projeto3()
    }
}
