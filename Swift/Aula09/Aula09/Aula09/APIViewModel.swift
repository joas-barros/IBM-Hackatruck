//
//  API.swift
//  Aula09
//
//  Created by Student12 on 25/10/23.
//

import Foundation

struct geral : Decodable {
    var data : [detalheFaculdade]
}

struct detalheFaculdade : Decodable, Identifiable{
    var id : String?
    var nomeFaculdade : String?
    var Predios: [detalhePredio]
}

struct detalhePredio : Decodable{
    var nomePredio : String?
    var cursos : [detalheCursos]
}

struct detalheCursos : Decodable {
    var nomeCurso : String?
    var area : Int?
}

class APIViewModel : ObservableObject {
    @Published var coins : [detalheFaculdade] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/lerDados") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let decodificado = try JSONDecoder().decode(geral.self, from: data)
                
                DispatchQueue.main.async {
                    self?.coins = decodificado.data
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}

