//
//  CountryModel.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 20.4.25.
//

import Foundation

struct CountryModel: Identifiable, Decodable, Hashable {
    let id: Int
    let slug: String
    let title: String
    let image: CountryImageModel
    let seo: SEODataModel?
    let packageCount: Int

    enum CodingKeys: String, CodingKey {
        case id, slug, title, image, seo
        case packageCount = "package_count"
    }
}
