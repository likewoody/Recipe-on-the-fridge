//
//  FridgeViewItemList.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/23/24.
//

import Foundation

enum FridgeSegment: String, CaseIterable {
    case topFirdge = "냉장고"
    case bottomFridge = "냉동실"
    case indoor = "실내(각종 소스 등)"
    
    var category: Int {
        switch self {
        case .topFirdge:
            0
        case .bottomFridge:
            1
        case .indoor:
            2
        }
    }
}


