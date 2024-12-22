//
//  AppInfoView.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/21/24.
//

import SwiftUI

// MARK: View
struct AppInfoView: View {
    
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
                Spacer(minLength: AttributeOptions.share.leftAndRightSpacing)
                Button {
                    
                } label: {
                    Text(subTitle)
                    Spacer()
                    Text(subTitle == "앱 버전" ? AttributeOptions.share.currentAppVersion : AttributeOptions.share.greaterThan)
                        .foregroundStyle(subTitle == "앱 버전" ? .gray : .black)
                }
                Spacer(minLength: UIScreen.main.bounds.width * 0.1)
            }
            .font(.title3)
            .foregroundStyle(.black)

                
        }
        .padding(.vertical, 30)
    }
    
}


// MARK: Preview
#Preview {
    AppInfoView()
}
