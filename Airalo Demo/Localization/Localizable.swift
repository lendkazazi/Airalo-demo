//
//  Localizable.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 24.4.25.
//

import Foundation

struct Localizable {
    static var hello: String {
        NSLocalizedString("hello",
                          comment: "Initial navigation bar title")
    }
    static var popularCountries: String {
        NSLocalizedString("popular_countries",
                          comment: "Section header for the popular countries list")
    }
    static var fetchFailed: String {
        NSLocalizedString("fetch_failed",
                          comment: "Error message when a network request fails")
    }
    static func buyNowFormat(_ price: String) -> String {
        String(format: NSLocalizedString("buy_now_format",
                                         comment: "Buy button text with price placeholder"),
               price)
    }
    static var data: String {
        NSLocalizedString("data",
                          comment: "Package description text for the data a user gets")
    }
    static var validity: String {
        NSLocalizedString("validity",
                          comment: "Package description text for the number of days the package is active")
    }
    static var retry: String {
        NSLocalizedString("retry",
                          comment: "Generic text for button in case API response fails")
    }
}
