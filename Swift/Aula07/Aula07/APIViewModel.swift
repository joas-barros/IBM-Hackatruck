//
//  APIViewModel.swift
//  Aula07
//
//  Created by Student12 on 20/10/23.
//

import Foundation

struct Detalhamento : Decodable, Identifiable{
          var id: String?
          var rank: String?
          var symbol: String?
          var name: String?
          var supply: String?
          var maxSupply: String?
          var marketCapUsd: String?
          var volumeUsd24Hr: String?
          var priceUsd: String?
          var changePercent24Hr: String?
          var vwap24Hr: String?
        }


struct API2: Decodable {
    var data : Detalhamento
}

struct API : Decodable {
    var data : [CoinMenu]
}

struct CoinMenu : Decodable, Hashable{
    var id: String?
    var rank : String?
    var symbol: String?
}

class APIViewModel : ObservableObject {
    @Published var coins : [CoinMenu] = []
    @Published var coins2 : [Detalhamento] = []
    
    func fetch(){
        guard let url = URL(string: "https://api.coincap.io/v2/assets") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let decodificado = try JSONDecoder().decode(API.self, from: data)
                
                DispatchQueue.main.async {
                    self?.coins = decodificado.data
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    func fetch2(coinID: String){
        guard let url2 = URL(string: "https://api.coincap.io/v2/assets/\(coinID)") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url2){[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let decodificado = try JSONDecoder().decode(API2.self, from: data)
                
                DispatchQueue.main.async {
                    self?.coins2.append(decodificado.data)
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}
