//
//  CountrySummaryModel.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 23.4.25.
//

import Foundation

struct CountrySummaryModel: Decodable, Identifiable, Hashable {
    let id: Int
    let slug: String
    let title: String
    let image: CountryImageModel
}
