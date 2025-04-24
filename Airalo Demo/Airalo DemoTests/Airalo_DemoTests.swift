//
//  Airalo_DemoTests.swift
//  Airalo DemoTests
//
//  Created by Lend Kazazi on 19.4.25.
//

import Foundation
import Testing
@testable import Airalo_Demo

struct Airalo_DemoTests {
    @Test
    func testEndpointURLConstruction() {
        let packages = Endpoint.packages(countrySlug: "turkey")
        #expect(packages.url.absoluteString.hasSuffix("/countries/turkey"))
    }
    
    @Test
    func testCountryListViewModelHandlesSuccess() async throws {
        let json = """
          [
              {
                  "id": 254,
                  "slug": "kosovo",
                  "title": "Kosovo",
                  "image": {
                      "width": 132,
                      "height": 99,
                      "url": "https://cdn.airalo.com/images/55c9af61-765d-40e1-b489-62dbb6384532.png"
                  },
                  "seo": {
                      "title": null,
                      "keywords": null,
                      "description": null
                  },
                  "package_count": 4
              }
          ]
          """
        URLProtocolStub.testURLs = [ Endpoint.countries.url: Data(json.utf8) ]
        URLProtocolStub.error = nil

        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [URLProtocolStub.self]
        APIService.shared.session = URLSession(configuration: config)

        let vm = await CountryListViewModel()
        await vm.fetchCountries()

        #expect(await vm.isLoading == false)
        #expect(await vm.error == nil)
        #expect(await vm.countries.count == 1)
    }
    
    @Test
    func testCountryDetailViewModelHandlesFailure() async throws {
        URLProtocolStub.testURLs = [:]
        URLProtocolStub.error = URLError(.notConnectedToInternet)
        
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [URLProtocolStub.self]
        APIService.shared.session = URLSession(configuration: config)
        
        let vm = await CountryDetailViewModel()
        await vm.fetchPackagesForCountry(id: "999")

        
        #expect(await vm.isLoading == false)
        #expect(await vm.detail == nil)
        #expect(await vm.error != nil)
    }
}
