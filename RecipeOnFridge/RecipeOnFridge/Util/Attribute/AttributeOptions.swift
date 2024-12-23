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
    
    // For Command
    public var dateFormmater: DateFormatter {
        let dateFormmater = DateFormatter()
        dateFormmater.dateFormat = "YYYY.MM.dd EEE"
        
        return dateFormmater
    }
    
    // For MainTabView
    public let tabs = [
        (imageName: TabItemList.imageName.fridge, selectedImageName: TabItemList.selectedImageName.fridge, text: TabItemList.text.fridge),
        (imageName: TabItemList.imageName.recipe, selectedImageName: TabItemList.selectedImageName.recipe, text: TabItemList.text.recipe),
        (imageName: TabItemList.imageName.setting, selectedImageName: TabItemList.selectedImageName.setting, text: TabItemList.text.setting)
    ]
    public let paddingbetweenImageAndText: CGFloat = 1
    
    
    // Fridge
    public let fridgeArrangeHeight: CGFloat = UIScreen.main.bounds.height * 0.06
    public let fridgeBackgroundOpacity: CGFloat = 0.7
    public let fridgeArrangeEachHeightSpacing: CGFloat = 1
    public let fridgeArrangeRightPadding: CGFloat = 25
    public let fridgeArrangeTopPadding: CGFloat = 70
    public let fridgeItemContainerRadius: CGFloat = 10
    public let fridgeItemContainerVerticalPadding: CGFloat = 10
    public let fridgeItemContainerHeight: CGFloat = 60

    
    // For AppInfoView
    public let appInfoColorOpacity: CGFloat = 0.6
    public let appInfoTopHeight: CGFloat = 100
    public let appInfoLeftAndRightSpacing: CGFloat = UIScreen.main.bounds.width * 0.1
    public let appInfoCurrentAppVersion: String = "1.0.0"
    public let appInfoGreaterThan: String = ">"
    public let appInfoPrivacyPolicyURLString: String = "https://noisy-save-539.notion.site/164aa9e6245580e78f93f7cc5a47c861"
    
    
    
    
    
    private init() {}
}
