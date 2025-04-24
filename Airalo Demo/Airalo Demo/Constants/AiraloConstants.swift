//
//  AiraloConstants.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 20.4.25.
//

import Foundation
import SwiftUI

struct AiraloConstants {
    
    struct Shared {
        struct Layout {
            static let horizontalPadding: CGFloat = 20
            static let buttonHeight: CGFloat = 50
        }
        
        struct Colors {
            static let shimmerPlaceholder = Color.gray.opacity(0.6)
            static let cardBackground = Color.white
        }
        
        struct Shadow {
            static let color = Color.black.opacity(0.15)
            static let radius: CGFloat = 30
            static let x: CGFloat = 0
            static let y: CGFloat = 10
        }
    }
    
    struct CountryList {
        struct Layout {
            static let rowHeight: CGFloat = 55
            static let cornerRadius: CGFloat = 12
        }
        
        struct Image {
            static let flagSize = CGSize(width: 37, height: 28)
        }
        
        struct Spacing {
            static let listItemSpacing: CGFloat = 10
            static let errorSpacing: CGFloat = 16
            static let listTopSpacing: CGFloat = 8
        }
        
        struct Animation {
            static let shimmerDuration: Double = 1.2
        }
        
        struct Loading {
            static let itemCount = 10
        }
    }
    
    struct PackageCard {
        struct Layout {
            static let cornerRadius: CGFloat = 16
            static let buttonCornerRadius: CGFloat = 8
            static let imageSize = CGSize(width: 120, height: 80)
            static let padding: CGFloat = -16
            static let buttonHeight: CGFloat = 44
            static let estimatedCardHeight: CGFloat = 260
        }
        
        struct Spacing {
            static let rowSpacing: CGFloat = 16
            static let titleSpacing: CGFloat = 4
        }
    }
}
