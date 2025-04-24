//
//  Airalo_DemoApp.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 19.4.25.
//

import SwiftUI

@main
struct Airalo_DemoApp: App {
    init() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        
        navBarAppearance.backgroundColor = UIColor(named: "navigation-background")
        navBarAppearance.shadowColor = .clear
        
        let largePara = NSMutableParagraphStyle()
        largePara.minimumLineHeight = 32
        largePara.maximumLineHeight = 32
        
        navBarAppearance.largeTitleTextAttributes = [
            .font: UIFont(name: "IBMPlexSans-SemiBold", size: 27)!
                ,
            .foregroundColor: UIColor(named: "text-primary-color")!,
            .kern: -0.5,
            .paragraphStyle: largePara
        ]
        navBarAppearance.titleTextAttributes = [
            .font: UIFont(name: "IBMPlexSans-SemiBold", size: 18)!,
            .foregroundColor: UIColor(named: "text-primary-color")!
        ]
        
        let backButtonAppearance = UIBarButtonItemAppearance()
        backButtonAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor.clear
        ]
        navBarAppearance.backButtonAppearance = backButtonAppearance
        
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        
        UINavigationBar.appearance().tintColor = UIColor(named: "text-primary-color")
    }
    
    var body: some Scene {
        WindowGroup {
            CountryListView()
                .accentColor(AppColor.textPrimary.color)
        }
    }
}
