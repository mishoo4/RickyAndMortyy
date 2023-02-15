//
//  RMGetAllCharactersResponse.swift
//  RickyAndMorty
//
//  Created by misho zirakashvili on 15.02.23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prew: String?
    }
    let info: Info
    let results: [RMCharacter]
}
