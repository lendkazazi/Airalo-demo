//
//  CountryDetailView.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 23.4.25.
//

import Foundation
import SwiftUI

struct CountryDetailView: View {
    let country: CountryModel
    @StateObject private var viewModel = CountryDetailViewModel()

    var body: some View {
        Group {
            if viewModel.isLoading {
                loadingList
            } else if let errorMessage = viewModel.error {
                ErrorView(errorMessage: errorMessage) {
                    viewModel.fetchPackagesForCountry(id: String(country.id))
                }
            } else {
                packageList
            }
        }
        .navigationTitle(country.title)
        .navigationBarTitleDisplayMode(.large)
        .onAppear {
            viewModel.fetchPackagesForCountry(id: String(country.id))
        }
    }

    private var loadingList: some View {
        List {
            Color.clear
                .frame(height: AiraloConstants.CountryList.Spacing.listTopSpacing)
                .listRowSeparator(.hidden)
                .listRowInsets(.init())
                .listRowBackground(Color.clear)
            ForEach(0..<AiraloConstants.CountryList.Loading.itemCount, id: \.self) { _ in
                PackageCardShimmerView()
                    .listRowSeparator(.hidden)
                    .listRowInsets(.init())
                    .listRowBackground(Color.clear)
            }
        }
        .style()
    }

    private var packageList: some View {
        List {
            Color.clear
                .frame(height: AiraloConstants.CountryList.Spacing.listTopSpacing)
                .listRowSeparator(.hidden)
                .listRowInsets(.init())
                .listRowBackground(Color.clear)
            ForEach(viewModel.detail?.packages ?? []) { package in
                PackageCardView(package: package) {
                }
                .listRowSeparator(.hidden)
                .listRowInsets(.init())
                .listRowBackground(Color.clear)
            }
            .listSectionSeparator(.hidden)
        }
        .style()
    }
}

