//
//  CountryListView.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 20.4.25.
//

import UIKit
import SwiftUI

struct CountryListView: View  {
    @StateObject private var viewModel = CountryListViewModel()
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            Group {
                if viewModel.isLoading {
                    shimmerList
                } else if let errorMessage = viewModel.error {
                    ErrorView(errorMessage: errorMessage) {
                        viewModel.fetchCountries()
                    }
                } else {
                    countryList
                }
            }
            .navigationTitle(Localizable.hello)
            .onAppear { viewModel.fetchCountries() }
            
            .navigationDestination(for: CountryModel.self) { country in
                CountryDetailView(country: country)
            }
        }
    }
    
    // your shimmer-loading list
    private var shimmerList: some View {
        List {
            Section(header: sectionHeader) {
                ForEach(0..<AiraloConstants.CountryList.Loading.itemCount, id: \.self) { _ in
                    ShimmerView()
                        .listRowSeparator(.hidden)
                        .listRowInsets(.init())
                        .listRowBackground(Color.clear)
                }
            }
        }
        .style()
    }
    
    private var countryList: some View {
        List {
            Section(
                header:
                    Text(Localizable.popularCountries)
                    .typography(
                        .semiBold,
                        size: 19,
                        lineHeight: 22,
                        letterSpacing: -0.2,
                        color: AppColor.textPrimary.color
                    )
            ) {
                ForEach(viewModel.countries, id: \.self) { country in
                    CountryRowView(country: country)
                        .listRowSeparator(.hidden)
                        .listRowInsets(.init())
                        .listRowBackground(Color.clear)
                        .onTapGesture {
                            path.append(country)
                        }
                }
            }
            .listSectionSeparator(.hidden)
        }
        .style()
    }
    
    private var sectionHeader: some View {
        Text(Localizable.popularCountries)
            .typography(
                .semiBold,
                size: 19,
                lineHeight: 22,
                letterSpacing: -0.2,
                color: AppColor.textPrimary.color
            )
            .padding(.leading, AiraloConstants.Shared.Layout.horizontalPadding)
    }
}
