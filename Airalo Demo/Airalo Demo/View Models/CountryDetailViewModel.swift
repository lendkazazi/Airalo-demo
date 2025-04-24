//
//  CountryDetailViewModel.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 23.4.25.
//

import Foundation

@MainActor
class CountryDetailViewModel: ObservableObject {
    @Published var detail: CountryDetailModel?
    @Published var isLoading = true
    @Published var error: String?

    func fetchPackagesForCountry(id: String) async {
        self.isLoading = true
        do {
            self.detail = try await APIService.shared.fetch(.packages(countrySlug: id), as: CountryDetailModel.self)
            self.error = nil
        } catch {
            self.error = Localizable.fetchFailed
        }
        self.isLoading = false
    }
}
