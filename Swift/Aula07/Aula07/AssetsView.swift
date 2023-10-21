//
//  AssetsView.swift
//  Aula07
//
//  Created by Student12 on 20/10/23.
//

import SwiftUI

struct AssetsView: View {
    @StateObject var vm = APIViewModel()
    var body: some View {
        ScrollView{
            VStack{
                ForEach(vm.coins, id: \.id){coin in NavigationLink(destination: DetalhesAssets(coinId: coin.id!)){
                    HStack{
                        Text(coin.symbol!)
                        Spacer()
                        Text(coin.id!)
                    }.padding(30).background(.gray).foregroundColor(.white)
                }}
            }.onAppear(){
                vm.fetch()
            }
        }
    }
}

struct AssetsView_Previews: PreviewProvider {
    static var previews: some View {
        AssetsView()
    }
}
