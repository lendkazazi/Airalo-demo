//
//  CountryDetail.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 23.4.25.
//

import Foundation

struct CountryDetailModel: Identifiable, Decodable, Hashable {
    let id: Int
    let slug: String
    let title: String
    let image: CountryImageModel?
    let seo: SEODataModel?
    let packages: [PackageModel]?

    private enum CodingKeys: String, CodingKey {
        case id, slug, title, image, seo, packages
    }
}
