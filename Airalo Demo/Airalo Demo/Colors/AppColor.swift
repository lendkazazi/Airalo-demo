//
//  Colors.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 23.4.25.
//

import Foundation
import SwiftUI

enum AppColor: String {
    case mainBackground         = "main-background"
    case navigationBackground   = "navigation-background"
    case textPrimary            = "text-primary-color"
    case buttonLeadingGradient  = "button-leading-gradient"
    case buttonTrailingGradient = "button-trailing-gradient"
    case packageLeadingGradient = "package-leading-gradient"
    case packageTrailingGradient = "package-trailing-gradient"

    var color: Color {
        Color(rawValue)
    }
}

