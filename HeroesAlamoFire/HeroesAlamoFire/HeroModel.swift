//
//  HeroModel.swift
//  HeroesAlamoFire
//
//  Created by Ratislav Ovchinnikov on 05.12.2025.
//

import Foundation

struct HeroModel: Codable {
    let id: Int
    let name: String
    let powerstats: PowerStats
    let appearance: Appearance
    let biography: Biography
    let work: Work
    let images: HeroImages
}

struct PowerStats: Codable {
    let intelligence: Int?
    let strength: Int?
    let speed: Int?
    let durability: Int?
    let power: Int?
    let combat: Int?
}

struct Appearance: Codable {
    let gender: String?
    let race: String?
}

struct Biography: Codable {
    let fullName: String?
    let publisher: String?
}

struct Work: Codable {
    let occupation: String?
}

struct HeroImages: Codable {
    let md: String
}
