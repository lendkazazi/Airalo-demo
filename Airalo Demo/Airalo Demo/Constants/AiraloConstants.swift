//
//  AiraloConstants.swift
//  Airalo Demo
//
//  Created by Baboon on 20.4.25.
//

import Foundation
import SwiftUI

struct AiraloConstants {
    
    struct CountryList {
        struct Layout {
            static let horizontalPadding: CGFloat = 20
            static let rowHeight: CGFloat = 55
            static let cornerRadius: CGFloat = 12
            static let buttonHeight: CGFloat = 50
        }
        
        struct Image {
            static let flagSize: CGSize = CGSize(width: 37, height: 28)
        }
        
        struct Shadow {
            static let color: Color = Color.black.opacity(0.15)
            static let radius: CGFloat = 30
            static let x: CGFloat = 0
            static let y: CGFloat = 10
        }
        
        struct Fonts {
            static let rowTitle = Font.system(size: 16, weight: .medium)
        }
        
        struct Spacing {
            static let listItemSpacing: CGFloat = 10
            static let errorSpacing: CGFloat = 16
        }
        
        struct Animation {
            static let shimmerDuration: Double = 1.2
        }
        
        struct Colors {
            static let shimmerPlaceholder = Color.gray.opacity(0.2)
            static let cardBackground = Color.white
        }
        
        struct Loading {
            static let itemCount = 10
        }
    }
}
