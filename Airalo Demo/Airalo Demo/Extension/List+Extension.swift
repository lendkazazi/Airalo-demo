//
//  List+Extension.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 23.4.25.
//

import Foundation
import SwiftUI

extension List {
    func style() -> some View {
        self
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .background(AppColor.mainBackground.color)
    }
}
