//
//  ContentView.swift
//  Aula02
//
//  Created by Student12 on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var peso: Double = 0
    @State private var altura: Double = 0
    @State private var texto = "Normal"
    @State private var imc: Double = 0
    @State private var cor: Color = Color("normal")
    var body: some View {
        ZStack{
            VStack {
                Text("Calculadora de IMC").fontWeight(.bold)
                    .font(.system(size: 30))
                TextField("Peso", value: $peso, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .padding()
                TextField("Altura", value: $altura, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .padding()
                Button("Calcular"){
                    imc = peso / ( altura * altura)
                    if (imc < 18.5){
                        texto = "Baixo Peso"
                        cor = Color("baixo_peso")
                    }else if (imc >= 18.5 && imc < 25){
                        texto = "Normal"
                        cor = Color("normal")
                    } else if (imc >= 25 && imc < 30){
                        texto = "Sobrepeso"
                        cor = Color("sobrepeso")
                    } else {
                        texto = "Obesidade"
                        cor = Color("obesidade")
                    }
                }.buttonStyle(.borderedProminent)
                Spacer()
                
                Text(texto).font(.system(size: 30)).foregroundColor(Color.white)
                Spacer()
                
                Image("tabela-IMC").resizable().scaledToFit()
            }
            
        }.background(cor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
