//
//  Modo 3.swift
//  Desafio 2
//
//  Created by Student12 on 11/10/23.
//

import SwiftUI

struct Modo_3: View {
    @State var sim: String = ""
    var body: some View {
        VStack{
            Text(sim)
        }
    }
}

struct Modo_3_Previews: PreviewProvider {
    static var previews: some View {
        Modo_3()
    }
}
