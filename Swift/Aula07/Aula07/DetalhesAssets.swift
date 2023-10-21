//
//  DetalhesAssets.swift
//  Aula07
//
//  Created by Student12 on 20/10/23.
//

import SwiftUI

struct DetalhesAssets: View {
    
    var coinId : String
    
    @StateObject var vm2 = APIViewModel()
    
    var body: some View {
        VStack{
            ForEach(vm2.coins2){ c in
                Text(c.rank!)
                Text(c.symbol!)
                Text(c.name!)
                Text(c.supply!)
                Text(c.maxSupply!)
                Text(c.marketCapUsd!)
                Text(c.volumeUsd24Hr!)
                Text(c.priceUsd!)
                Text(c.vwap24Hr!)
            }
        }.onAppear(){
            vm2.fetch2(coinID: coinId)
        }
    }
}

struct DetalhesAssets_Previews: PreviewProvider {
    static var previews: some View {
        DetalhesAssets(coinId: "bitcoin")
    }
}
