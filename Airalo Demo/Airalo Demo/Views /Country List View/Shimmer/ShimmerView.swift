//
//  ShimmerView.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 20.4.25.
//

import Foundation
import SwiftUI

struct ShimmerView: View {
    @State private var isAnimating = false

    var body: some View {
        RoundedRectangle(cornerRadius: AiraloConstants.CountryList.Layout.cornerRadius)
            .fill(Color.gray.opacity(0.2))
            .frame(height: AiraloConstants.CountryList.Layout.rowHeight)
            .padding(.horizontal, AiraloConstants.Shared.Layout.horizontalPadding)
            .padding(.vertical, AiraloConstants.CountryList.Spacing.listItemSpacing)
            .shimmer(isActive: true)
    }
}
