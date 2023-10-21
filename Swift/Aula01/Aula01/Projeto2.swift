//
//  Projeto2.swift
//  Aula01
//
//  Created by Student12 on 09/10/23.
//

import SwiftUI

struct Projeto2: View {
    var body: some View {
        VStack{
           Image("caminhao 1")
                .resizable()
                .scaledToFit()
            Image("caminhao 1")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(
                    Text("HackaTruck")
                        .foregroundColor(Color.blue)
                        .font(.system(size: 25))
                        .fontWeight(.heavy)
                        .padding(.bottom, 120))
                .padding()
            HStack{
                Text("Maker")
                    .foregroundColor(Color.yellow)
                    .font(.system(size: 30))
                Text("Space")
                    .foregroundColor(Color.red)
                    .font(.system(size: 30))
            }.padding([.leading, .bottom, .trailing], 100.0)
                .background(Color.black)
        }
        
    }
}

struct Projeto2_Previews: PreviewProvider {
    static var previews: some View {
        Projeto2()
    }
}
