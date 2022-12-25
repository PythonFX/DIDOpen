//
//  ButtonStyle.swift
//  DreamMortgageApp
//
//  Created by VincentMing on 2022/12/11.
//

import SwiftUI

struct ForegroundDisableButtonStyle: ButtonStyle {
    var disabled = false
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .foregroundColor(disabled ? .gray : .black)
    }
}
