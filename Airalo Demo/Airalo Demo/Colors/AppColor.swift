//
//  Colors.swift
//  Airalo Demo
//
//  Created by Baboon on 23.4.25.
//

import Foundation
import SwiftUI

enum AppColor: String {
    case mainBackground         = "main-background"
    case navigationBackground   = "navigation-background"
    case textPrimary            = "text-primary-color"
    case buttonLeadingGradient  = "button-leading-gradient"
    case buttonTrailingGradient = "button-trailing-gradient"

    /// Get the SwiftUI Color from your asset catalog
    var color: Color {
        Color(rawValue)
    }
}

