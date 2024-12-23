//
//  TabItemsEnum.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/21/24.
//

import Foundation

enum TabItemList {
    case imageName, selectedImageName, text
    
    var fridge: String {
        switch self {
        case .imageName:
            "rectangle.grid.2x2"
        case .selectedImageName:
            "rectangle.grid.2x2.fill"
        case .text:
            "냉장고"
        }
    }
    
    var recipe: String {
        switch self {
        case .imageName:
            "list.bullet.clipboard"
        case .selectedImageName:
            "list.bullet.clipboard.fill"
        case .text:
            "레시피"
        }
    }
    
    var setting: String {
        switch self {
        case .imageName:
            "gearshape"
        case .selectedImageName:
            "gearshape.fill"
        case .text:
            "앱 정보"
        }
    }
}
