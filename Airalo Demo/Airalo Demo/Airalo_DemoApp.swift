//
//  Airalo_DemoApp.swift
//  Airalo Demo
//
//  Created by Baboon on 19.4.25.
//

import SwiftUI

@main
struct Airalo_DemoApp: App {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "navigation-background")
        
        let para = NSMutableParagraphStyle()
        para.minimumLineHeight = 32
        para.maximumLineHeight = 32
        
        let largeFont = UIFont(name: "IBMPlexSans-SemiBold", size: 27) ?? UIFont.systemFont(ofSize: 27, weight: .semibold)
        
        appearance.largeTitleTextAttributes = [
            .font: largeFont,
            .foregroundColor: UIColor(named: "text-primary-color") ?? .black,
            .kern: -0.5,
            .paragraphStyle: para
        ]
        
        appearance.titleTextAttributes = [
            .font: UIFont(name: "IBMPlexSans-SemiBold", size: 18) ?? UIFont.systemFont(ofSize: 18, weight: .semibold),
            .foregroundColor: UIColor(named: "text-primary-color") ?? .black
        ]

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some Scene {
        WindowGroup {
            CountryListView()
        }
    }
}
