//
//  Typography.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 23.4.25.
//

import Foundation
import SwiftUI

enum FontType: String {
    case semiBold    = "IBMPlexSans-SemiBold"
    case bold        = "IBMPlexSans-Bold"
    case medium      = "IBMPlexSans-Medium"
    case regular     = "IBMPlexSans-Regular"
}

extension Text {
    func typography(
        _ weight: FontType,
        size: CGFloat,
        lineHeight: CGFloat,
        letterSpacing: CGFloat = 0,
        color: Color = .primary
    ) -> some View {
        let lineSpacing = max(0, lineHeight - size)
        return self
            .font(.custom(weight.rawValue, size: size))
            .foregroundColor(color)
            .kerning(letterSpacing)
            .lineSpacing(lineSpacing)
    }
}

