//
//  Home.swift
//  Aula03
//
//  Created by Student12 on 11/10/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        List(1..<11){
            Text("Item \($0)")
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
