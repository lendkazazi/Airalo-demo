//
//  CountryDetailViewModel.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 23.4.25.
//

import Foundation

class CountryDetailViewModel: ObservableObject {
    @Published var detail: CountryDetailModel?
    @Published var isLoading = true
    @Published var error: String?

    func fetchPackagesForCountry(id: String) {
        self.isLoading = true
        APIService.shared.fetch(.packages(countrySlug: id), type: CountryDetailModel.self) { result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .success(let detail):
                    self.detail = detail
                case .failure:
                    self.error = Localizable.fetchFailed
                }
            }
        }
    }
}
