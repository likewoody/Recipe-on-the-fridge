//
//  AttributeOptions.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/21/24.
//

import Foundation
import UIKit

public struct AttributeOptions {
    public static let share = AttributeOptions()
    
    // For AppInfoView
    public let colorOpacity: CGFloat = 0.6
    public let topHeight: CGFloat = 100
    public let leftAndRightSpacing: CGFloat = UIScreen.main.bounds.width * 0.1
//    public let appInfoTitle: String = "앱 정보"
    public let currentAppVersion: String = "1.0.0"
    public let greaterThan: String = ">"
    
    
    private init() {}
}
