//
//  CountryRowView.swift
//  Airalo Demo
//
//  Created by Baboon on 20.4.25.
//

import Foundation
import SwiftUI

struct CountryRowView: View {
    let country: CountryModel

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: AiraloConstants.CountryList.Layout.cornerRadius)
                .fill(AiraloConstants.CountryList.Colors.cardBackground)
                .shadow(color: AiraloConstants.CountryList.Shadow.color,
                        radius: AiraloConstants.CountryList.Shadow.radius,
                        x: AiraloConstants.CountryList.Shadow.x,
                        y: AiraloConstants.CountryList.Shadow.y)

            HStack {
                AsyncImage(url: URL(string: country.image.url)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    AiraloConstants.CountryList.Colors.shimmerPlaceholder
                }
                .frame(width: AiraloConstants.CountryList.Image.flagSize.width,
                       height: AiraloConstants.CountryList.Image.flagSize.height)

                Text(country.title)
                    .typography(
                        .medium,
                        size: 15,
                        lineHeight: 20,
                        letterSpacing: 0,
                        color: AppColor.textPrimary.color
                    )

                Spacer()

                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .frame(height: AiraloConstants.CountryList.Layout.rowHeight)
        .padding(.horizontal, AiraloConstants.CountryList.Layout.horizontalPadding)
        .padding(.vertical, AiraloConstants.CountryList.Spacing.listItemSpacing)
    }
}

