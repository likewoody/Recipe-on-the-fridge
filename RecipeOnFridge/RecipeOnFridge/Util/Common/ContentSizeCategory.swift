//
//  ContentSizeCategory.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/23/24.
//
import SwiftUI

extension ContentSizeCategory  {
    var customMinScaleFactor: CGFloat {
        switch self {
        case .extraSmall, .small, .medium:
            1.0
        case .large, .extraLarge, .extraExtraLarge:
            0.8
        default:
            0.6
        }
    }
    
}
