//
//  CountryListViewModel.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 20.4.25.
//

import Foundation

@MainActor
class CountryListViewModel: ObservableObject {
    @Published var countries: [CountryModel] = []
    @Published var isLoading = true
    @Published var error: String?

    func fetchCountries() async {
        self.isLoading = true
      do {
          self.countries = try await APIService.shared.fetch(.countries, as: [CountryModel].self)
          self.error = nil
      } catch {
          self.error = Localizable.fetchFailed
      }
        self.isLoading = false
    }
}
