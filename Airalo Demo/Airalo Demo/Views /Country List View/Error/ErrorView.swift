//
//  ErrorView.swift
//  Airalo Demo
//
//  Created by Baboon on 20.4.25.
//

import Foundation
import SwiftUI

struct ErrorView: View {
    let retryAction: () -> Void

    var body: some View {
        VStack(spacing: AiraloConstants.CountryList.Spacing.errorSpacing) {
            Text("Something went wrong")
                .typography(
                    .medium,
                    size: 18,
                    lineHeight: 20,
                    letterSpacing: 0,
                    color: AppColor.textPrimary.color
                )
            Button(action: retryAction) {
                Text("Retry")
                    .typography(
                        .medium,
                        size: 18,
                        lineHeight: 20,
                        letterSpacing: 0,
                        color: .white
                    )
                    .frame(maxWidth: 120, minHeight: AiraloConstants.CountryList.Layout.buttonHeight)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                AppColor.buttonLeadingGradient.color,
                                AppColor.buttonTrailingGradient.color
                            ]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .foregroundColor(.white)
                    .cornerRadius(AiraloConstants.CountryList.Layout.buttonHeight / 2)
            }
        }
    }
}
