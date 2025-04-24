//
//  CountryRowView.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 20.4.25.
//

import Foundation
import SwiftUI

struct CountryRowView: View {
    let country: CountryModel

    var body: some View {
        ZStack {
            background
            content
        }
        .frame(height: AiraloConstants.CountryList.Layout.rowHeight)
        .padding(.horizontal, AiraloConstants.Shared.Layout.horizontalPadding)
        .padding(.vertical, AiraloConstants.CountryList.Spacing.listItemSpacing)
    }

    private var background: some View {
        RoundedRectangle(cornerRadius: AiraloConstants.CountryList.Layout.cornerRadius)
            .fill(AiraloConstants.Shared.Colors.cardBackground)
            .shadow(
                color: AiraloConstants.Shared.Shadow.color,
                radius: AiraloConstants.Shared.Shadow.radius,
                x: AiraloConstants.Shared.Shadow.x,
                y: AiraloConstants.Shared.Shadow.y
            )
    }

    private var content: some View {
        HStack {
            flagImage
            titleText
            Spacer()
            chevron
        }
        .padding()
    }

    private var flagImage: some View {
        AsyncImage(url: URL(string: country.image.url)) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            AiraloConstants.Shared.Colors.shimmerPlaceholder
        }
        .frame(
            width: AiraloConstants.CountryList.Image.flagSize.width,
            height: AiraloConstants.CountryList.Image.flagSize.height
        )
    }

    private var titleText: some View {
        Text(country.title)
            .typography(
                .medium,
                size: 15,
                lineHeight: 20,
                letterSpacing: 0,
                color: AppColor.textPrimary.color
            )
    }

    private var chevron: some View {
        Image("AIRALO_COUNTRY_LIST_ARROW_ICON")
    }
}

