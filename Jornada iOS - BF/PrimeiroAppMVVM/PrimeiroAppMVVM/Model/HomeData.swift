//
//  HomeData.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Leonardo Freitas on 12/11/24.
//

import UIKit
//Decodable
//decodifica -> transforma um Json em um objeto

// Encodable
// Codifica um objeto, ou seja, tornar um tipo de swift em Json

//Codable
//Ele codifica e decodifica

class HomeData: Codable {
    var stories: [Stories]?
    var posts: [Posts]?
}
