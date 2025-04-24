//
//  PackageModel.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 23.4.25.
//

import Foundation

struct PackageModel: Decodable, Identifiable, Hashable {
    let id: Int
    let slug: String
    let price: Double
    let title: String
    let data: String
    let voice: String?
    let text: String?
    let validity: String
    let day: Int
    let amount: Int
    let isUnlimited: Bool
    let isUnlimitedText: Bool
    let isUnlimitedVoice: Bool
    let note: String?
    let shortInfo: String?
    let callingCredit: String?
    let fairUsagePolicy: String?
    let isStock: Bool
    let operatorInfo: OperatorInfoModel
    let isMostPopular: Bool
    let estimatedPoints: Int?

    private enum CodingKeys: String, CodingKey {
        case id, slug, price, title, data, voice, text, validity, day, amount
        case isUnlimited           = "is_unlimited"
        case isUnlimitedText       = "is_unlimited_text"
        case isUnlimitedVoice      = "is_unlimited_voice"
        case note
        case shortInfo             = "short_info"
        case callingCredit         = "calling_credit"
        case fairUsagePolicy       = "fair_usage_policy"
        case isStock               = "is_stock"
        case operatorInfo          = "operator"
        case isMostPopular         = "is_most_popular"
        case estimatedPoints       = "estimated_points"
    }
}
