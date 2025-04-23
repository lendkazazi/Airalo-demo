//
//  CountryListViewModel.swift
//  Airalo Demo
//
//  Created by Baboon on 20.4.25.
//

import Foundation

class CountryListViewModel: ObservableObject {
    @Published var countries: [CountryModel] = []
    @Published var isLoading = true
    @Published var error: String?

    func fetchCountries() {
        self.isLoading = true
        APIService.shared.fetch(.countries, type: [CountryModel].self) { result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .success(let countries):
                    self.countries = countries
                case .failure:
                    self.error = "Failed to load countries"
                }
            }
            }
    }
}
