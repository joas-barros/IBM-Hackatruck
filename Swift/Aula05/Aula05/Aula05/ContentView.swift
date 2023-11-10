//
//  ContentView.swift
//  Aula05
//
//  Created by Student12 on 18/10/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State var nome = "Brasil"
    @State var mapa = [
        Location(name: "Argentina", coordinate: CLLocationCoordinate2D(latitude: -36.7129615, longitude: -70.1044853), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/1200px-Flag_of_Argentina.svg.png", description: "A Argentina é um país localizado na América do Sul e tem como capital a cidade de Buenos Aires. Possui mais de 2,7 milhões de km² de extensão, sendo assim o segundo maior do subcontinente. O território argentino apresenta grande variedade paisagística e climática, com destaque para uma parcela da Cordilheira dos Andes, a oeste, e a extensa região da Patagônia, ao sul."),
    Location(name: "Inglaterra", coordinate: CLLocationCoordinate2D(latitude: 51.5287398, longitude: -0.2664061), flag: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP8AAACZCAMAAADXexy/AAAADFBMVEX////IEC7TP1fKGTYxKYktAAAA1klEQVR4nO3asREAIQwDQR767/k7IDQz0l4F2thea7j93drTc8bj5+fn5+fn5+fn5+fn5+fnT4+fn5+fn5+fn5+fn5+fn58/PX5+fn5+fn5+fn5+fn5+fv70+Pn5+fn5+flf+/dw5+o/03PWdU5+/N3xd8ffHX93/N3xd8ffHX93/N3xd8ffHX93/N3xd1d//x2/t1/9/h/S4+fn5+fn5+fn5+fn5+fn50+Pn5+fn5+fn5+fn5+fn5+fPz1+fn5+fn5+fn5+fn5+fn7+9Pj5+fn5+fmf+38HeTBkU+w+GAAAAABJRU5ErkJggg==", description: "A Inglaterra é um país europeu localizado na ilha da Grã-Bretanha, sendo parte da união política conhecida como Reino Unido. Sua capital é a cidade de Londres.A população inglesa é atualmente de 56 milhões de habitantes, concentrando a maior parcela dos moradores do Reino Unido. A Inglaterra está entre os países mais desenvolvidos do mundo, exercendo a função de centro econômico e financeiro regional e internacional."), Location(name: "Egito", coordinate: CLLocationCoordinate2D(latitude: 30.0596113, longitude: 31.1760626), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/1920px-Flag_of_Egypt.svg.png", description: "O Egito é um país localizado na África. A sua história está atrelada à civilização do Egito Antigo, uma das mais antigas e desenvolvidas civilizações do globo, com valiosas contribuições para a humanidade. O declínio dessa civilização, após sucessivas invasões estrangeiras, assim como o domínio de grandes potências, resultou na formação do atual território do Egito."), Location(name: "Japao", coordinate: CLLocationCoordinate2D(latitude: 35.5042951, longitude: 138.4504136), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/1920px-Flag_of_Japan.svg.png", description: "Considerado a segunda maior potência econômica do planeta, o Japão está situado no continente asiático. Devido sua localização, no extremo leste da Ásia, o país é conhecido como a “terra do sol nascente”. Essa nação é formada por quatro grandes ilhas (Hokkaido, Honshu, Shikoku e Kyushu), que correspondem a 97% da área total e por diversas ilhas menores."), Location(name: "Nova Zelandia", coordinate: CLLocationCoordinate2D(latitude: -41.2525845, longitude: 174.589449), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Flag_of_New_Zealand.svg/2560px-Flag_of_New_Zealand.svg.png", description: "A Nova Zelândia é um país desenvolvido localizado na Oceania, continente banhado pelo Oceano Pacífico e caracterizado por grande quantidade de ilhas. Possui características geográficas diversas devido ao seu isolamento e, ainda, as recorrentes atividades vulcânicas e sísmicas que ocorrem no seu território. O país foi colonizado pelos europeus, mas a presença dos maoris, população nativa, ainda é culturalmente muito forte.")]
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    var body: some View {
        ZStack{
            VStack {
                Text("World Map").bold().font(.system(size: 30))
                Text(nome)
                Map(coordinateRegion: $region, annotationItems: mapa){
                    location in MapAnnotation(coordinate: location.coordinate) {
                        Rectangle().stroke(Color.blue).frame(width: 20, height: 20)
                    }
                }.frame(width: 400, height: 500)
                ScrollView(.horizontal){
                    HStack{
                        ForEach(mapa) { location in Button(location.name){
                            region.center = location.coordinate
                            nome = location.name
                        }.buttonStyle(BorderedProminentButtonStyle())
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
