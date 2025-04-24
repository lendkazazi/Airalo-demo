//
//  Endpoint.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 20.4.25.
//

import Foundation

enum Endpoint {
    case countries
    case packages(countrySlug: String)

    var path: String {
        switch self {
        case .countries:
            return "/countries?type=popular"
        case .packages(let id):
            return "/countries/\(id)"
        }
    }

    var url: URL? {
        return URL(string: API.baseURL + path)
    }
}
