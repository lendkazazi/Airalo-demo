//
//  PackageCardView.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 23.4.25.
//

import Foundation
import SwiftUI

struct PackageCardView: View {
    let package: PackageModel
    let buyAction: () -> Void

    var body: some View {
        ZStack(alignment: .topTrailing) {
            backgroundGradient
            content
            operatorImage
        }
        .padding(.horizontal, AiraloConstants.Shared.Layout.horizontalPadding)
        .padding(.vertical, AiraloConstants.PackageCard.Spacing.rowSpacing)
    }

    private var backgroundGradient: some View {
        LinearGradient(
            gradient: Gradient(colors: [
                AppColor.packageLeadingGradient.color,
                AppColor.packageTrailingGradient.color
            ]),
            startPoint: .leading,
            endPoint: .trailing
        )
        .cornerRadius(AiraloConstants.PackageCard.Layout.cornerRadius)
        .shadow(
            color: AiraloConstants.Shared.Shadow.color,
            radius: AiraloConstants.Shared.Shadow.radius,
            x: AiraloConstants.Shared.Shadow.x,
            y: AiraloConstants.Shared.Shadow.y
        )
    }

    private var content: some View {
        VStack(alignment: .leading,
               spacing: AiraloConstants.PackageCard.Spacing.rowSpacing
        ) {
            headerSection
            Divider()
            dataSection
            Divider()
            validitySection
            Divider()
            buyButton
        }
        .padding(AiraloConstants.Shared.Layout.horizontalPadding)
    }

    private var headerSection: some View {
        VStack(alignment: .leading,
               spacing: AiraloConstants.PackageCard.Spacing.titleSpacing
        ) {
            Text(package.operatorInfo.title)
                .typography(
                    .medium,
                    size: 19,
                    lineHeight: 22,
                    letterSpacing: -0.2,
                    color: AppColor.textPrimary.color
                )

            Text(package.operatorInfo.countries.first?.title ?? "")
                .typography(
                    .medium,
                    size: 13,
                    lineHeight: 20,
                    letterSpacing: 0,
                    color: AppColor.textPrimary.color
                )
        }
    }

    private var dataSection: some View {
        HStack {
            Image("AIRALO_PACKAGE_DATA_ICON")
                .foregroundColor(AppColor.textPrimary.color)

            Text(Localizable.data)
                .typography(
                    .medium,
                    size: 11,
                    lineHeight: 14,
                    letterSpacing: 1,
                    color: AppColor.textPrimary.color
                )

            Spacer()

            Text(package.data)
                .typography(
                    .medium,
                    size: 17,
                    lineHeight: 20,
                    letterSpacing: -0.1,
                    color: AppColor.textPrimary.color
                )
        }
    }

    private var validitySection: some View {
        HStack {
            Image("AIRALO_PACKAGE_VALIDITY_ICON")
                .foregroundColor(AppColor.textPrimary.color)

            Text(Localizable.validity)
                .typography(
                    .medium,
                    size: 11,
                    lineHeight: 14,
                    letterSpacing: 1,
                    color: AppColor.textPrimary.color
                )

            Spacer()

            Text(package.validity)
                .typography(
                    .medium,
                    size: 17,
                    lineHeight: 20,
                    letterSpacing: -0.1,
                    color: AppColor.textPrimary.color
                )
        }
    }

    private var buyButton: some View {
        Button(action: buyAction) {
            Text(Localizable.buyNowFormat(String(package.price)))
                .typography(
                    .medium,
                    size: 11,
                    lineHeight: 14,
                    letterSpacing: 1,
                    color: AppColor.textPrimary.color
                )
                .frame(
                    maxWidth: .infinity,
                    minHeight: AiraloConstants.PackageCard.Layout.buttonHeight
                )
        }
        .buttonStyle(.plain)
        .overlay(
            RoundedRectangle(
                cornerRadius: AiraloConstants.PackageCard.Layout.buttonCornerRadius
            )
            .stroke(AppColor.textPrimary.color, lineWidth: 1)
        )
        .cornerRadius(AiraloConstants.PackageCard.Layout.buttonCornerRadius)
    }

    private var operatorImage: some View {
        AsyncImage(url: URL(string: package.operatorInfo.image.url)) { image in
            image
              .resizable()
              .scaledToFit()
        } placeholder: {
            Color.white.opacity(0.3)
        }
        .frame(
            width: AiraloConstants.PackageCard.Layout.imageSize.width,
            height: AiraloConstants.PackageCard.Layout.imageSize.height
        )
        .offset(
            x: AiraloConstants.PackageCard.Layout.padding,
            y: AiraloConstants.PackageCard.Layout.padding
        )
    }
}


