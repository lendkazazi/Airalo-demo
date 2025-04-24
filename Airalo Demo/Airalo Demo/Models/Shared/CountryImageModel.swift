//
//  CountryImageModel.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 20.4.25.
//

import Foundation

struct CountryImageModel: Decodable, Hashable {
    let width: Int
    let height: Int
    let url: String
}
