//
//  Musica.swift
//  Aula044
//
//  Created by Student12 on 17/10/23.
//

import SwiftUI

struct Musica: View {
    @State var recebida : Song
    var body: some View {
        ZStack{
            VStack{
                AsyncImage(url: URL(string: recebida.capa)){image in image.resizable()} placeholder: {
                    ProgressView()
                }.frame(width: 150, height: 150)
                Text(recebida.name)
                Text(recebida.artist)
                HStack{
                    Image(systemName: "shuffle")
                    Image(systemName: "backward.end.fill")
                    Image(systemName: "play.fill")
                    Image(systemName: "forward.end.fill")
                    Image(systemName: "repeat")
                }.frame(width: 500, height: 100)
            }
        }
    }
}

struct Musica_Previews: PreviewProvider {
    static var previews: some View {
        Musica(recebida: Song(id: 0, name: "", artist: "", capa: ""))
    }
}
