//
//  CountryListView.swift
//  Airalo Demo
//
//  Created by Baboon on 20.4.25.
//

import UIKit
import SwiftUI

struct CountryListView: View {
    @StateObject private var viewModel = CountryListViewModel()
    
    var body: some View {
        NavigationView {
            Group {
                if viewModel.isLoading {
                    List {
                        Section(header: Text("Popular Countries")
                            .typography(
                                .semiBold,
                                size: 19,
                                lineHeight: 22,
                                letterSpacing: -0.2,
                                color: AppColor.textPrimary.color
                            )
                        ) {
                            ForEach(0..<AiraloConstants.CountryList.Loading.itemCount, id: \.self) { _ in
                                ShimmerView()
                                    .listRowSeparator(.hidden)
                                    .listRowInsets(.init())
                                    .listRowBackground(Color.clear)
                            }
                        }
                        .listSectionSeparator(.hidden)
                    }
                    .listStyle(PlainListStyle())
                    .scrollContentBackground(.hidden)
                    .background(AppColor.mainBackground.color)
                } else if let _ = viewModel.error {
                    ErrorView {
                        viewModel.fetchCountries()
                    }
                } else {
                    List {
                        Section(header: Text("Popular Countries")
                            .typography(
                                .semiBold,
                                size: 19,
                                lineHeight: 22,
                                letterSpacing: -0.2,
                                color: AppColor.textPrimary.color
                            )
                        ) {
                            ForEach(viewModel.countries) { country in
                                CountryRowView(country: country)
                                    .listRowSeparator(.hidden)
                                    .listRowInsets(EdgeInsets())
                                    .listRowBackground(Color.clear)
                            }
                        }
                        .listSectionSeparator(.hidden)
                    }
                    .listStyle(PlainListStyle())
                    .scrollContentBackground(.hidden)
                    .background(AppColor.mainBackground.color)
                }
            }
            .navigationTitle("Hello")
            .onAppear {
                viewModel.fetchCountries()
            }
        }
    }
}
