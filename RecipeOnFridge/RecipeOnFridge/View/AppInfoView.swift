//
//  AppInfoView.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/21/24.
//

import SwiftUI

// MARK: View
struct AppInfoView: View {
    @Environment(\.openURL) var openURL
    let attributeOptions: AttributeOptions
    
    var body: some View {
        VStack {
            Color.brown.ignoresSafeArea(.all)
                .customNavigationBar(title: "앱 정보")
            appInfoViewbody(subTitle: AppInfoViewItemList.privacyPolicy.name)
            appInfoViewbody(subTitle: AppInfoViewItemList.inqury.name)
            appInfoViewbody(subTitle: AppInfoViewItemList.appVersion.name)

            Spacer()
        }
    }
}


// MARK: extension
extension AppInfoView {
    
    private func appInfoViewbody(subTitle: String) -> some View {
        VStack {
            HStack {
                Spacer(minLength: attributeOptions.appInfoLeftAndRightSpacing)
                Button {
                    switch subTitle {
                    case AppInfoViewItemList.privacyPolicy.name:
                        openURLExcute(attributeOptions.appInfoPrivacyPolicyURLString)
                    case AppInfoViewItemList.inqury.name:
                        break
                    default:
                        break
                    }
                } label: {
                    Text(subTitle)
                    Spacer()
                    Text(subTitle == "앱 버전" ? attributeOptions.appInfoCurrentAppVersion : attributeOptions.appInfoGreaterThan)
                        .foregroundStyle(subTitle == "앱 버전" ? .gray : .primary)
                }
                Spacer(minLength: attributeOptions.appInfoLeftAndRightSpacing)
            }
            .font(.title3)
            .foregroundStyle(.black)
        }
        .padding(.vertical, 30)
    }
    
    private func openURLExcute(_ urlString: String) {
        openURL(URL(string: "https://noisy-save-539.notion.site/164aa9e6245580e78f93f7cc5a47c861")!)
    }
}


// MARK: Preview
#Preview {
    AppInfoView(attributeOptions: AttributeOptions.share)
}
