//
//  Animals.swift
//  ExtinctAnimals
//
//  Created by Анастасия Кучер on 09.11.2025.
//

import Foundation

struct Animals: Decodable {
    let status: String
    let data: [AnimalData]
}

struct AnimalData: Decodable {
    let binomialName: String
    let commonName: String
    let lastRecord: String
    let imageSrc: URL?
}
