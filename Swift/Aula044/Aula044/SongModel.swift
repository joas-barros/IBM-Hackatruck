//
//  SongModel.swift
//  Aula044
//
//  Created by Student12 on 16/10/23.
//

import Foundation

struct Suggestions : Identifiable {
    var id: Int
    var albumCover: String
    var albumName: String
}

struct Song : Identifiable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}
