//
//  ShimmerModifier.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 20.4.25.
//

import Foundation
import SwiftUI

struct ShimmerModifier: ViewModifier {
    let isActive: Bool
    
    @State private var phase: CGFloat = 0
    
    func body(content: Content) -> some View {
        content
            .overlay(
                isActive ?
                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white.opacity(0.6), Color.clear]),
                               startPoint: .leading,
                               endPoint: .trailing)
                .rotationEffect(.degrees(30))
                .offset(x: phase)
                .mask(content)
                .onAppear {
                    withAnimation(Animation.linear(duration: 1.5).repeatForever(autoreverses: false)) {
                        phase = 600
                    }
                }
                : nil
            )
    }
}
