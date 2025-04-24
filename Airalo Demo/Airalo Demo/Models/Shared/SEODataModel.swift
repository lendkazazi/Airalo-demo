//
//  SEODataModel.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 20.4.25.
//

import Foundation

struct SEODataModel: Decodable, Hashable {
    let title: String?
    let keywords: String?
    let description: String?
}
