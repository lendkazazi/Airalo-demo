//
//  NetworkModel.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 23.4.25.
//

import Foundation

struct NetworkModel: Decodable, Hashable {
    let network: String
    let serviceType: String
    let tadig: String?
    let status: Bool
    let coverageURL: String?

    private enum CodingKeys: String, CodingKey {
        case network
        case serviceType = "service_type"
        case tadig, status
        case coverageURL = "coverage_url"
    }
}
