//
//  View+Extension.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 20.4.25.
//

import Foundation
import SwiftUI

extension View {
    func shimmer(isActive: Bool) -> some View {
        modifier(ShimmerModifier(isActive: isActive))
    }
}
