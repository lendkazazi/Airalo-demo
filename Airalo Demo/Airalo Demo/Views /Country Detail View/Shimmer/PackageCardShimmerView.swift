//
//  PackageCardShimmerView.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 23.4.25.
//

import Foundation
import SwiftUI

struct PackageCardShimmerView: View {
    @State private var isAnimating = false

    var body: some View {
        RoundedRectangle(cornerRadius: AiraloConstants.PackageCard.Layout.cornerRadius)
            .fill(Color.gray.opacity(0.2))
            .frame(height: AiraloConstants.PackageCard.Layout.estimatedCardHeight)
            .padding(.horizontal, AiraloConstants.Shared.Layout.horizontalPadding)
            .padding(.vertical, AiraloConstants.PackageCard.Spacing.rowSpacing)
            .shimmer(isActive: isAnimating)
            .onAppear { isAnimating = true }
    }
}
