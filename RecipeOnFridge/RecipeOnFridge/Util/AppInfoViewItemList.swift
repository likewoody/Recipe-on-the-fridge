//
//  AppInfoViewItemList.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/21/24.
//

import Foundation

enum AppInfoViewItemList {
    case privacyPolicy, inqury, appVersion
    
    var name: String {
        switch self {
        case .privacyPolicy:
            "개인정보 처리방침"
        case .inqury:
            "문의하기"
        case .appVersion:
            "앱 버전"
        }
    }
}
