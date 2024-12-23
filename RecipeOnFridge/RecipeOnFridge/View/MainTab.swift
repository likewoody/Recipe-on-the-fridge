//
//  ContentView.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/21/24.
//

import SwiftUI

// MARK: View
struct MainTabView: View {
    
    let attributeOptions = AttributeOptions.share
    @Environment(\.sizeCategory) var sizeCategory
    @State var selectedTab: Int = 0
    
    var body: some View {
        VStack {
            Spacer()
            if selectedTab == 0 {
                FridgeView(attributeOptions: attributeOptions)
            } else if selectedTab == 1 {
                RecipeView()
            } else {
                AppInfoView(attributeOptions: attributeOptions)
            }
            Spacer()
            tabItemList
        }
        .background(.white)
        
//        .lineLimit(2)
//        .fixedSize(horizontal: false, vertical: true)
        .minimumScaleFactor(sizeCategory.customMinScaleFactor)
//        .multilineTextAlignment(.center)
//        .frame(maxWidth: .infinity)
        
    }
}


// MARK: extension
extension MainTabView {
    private var tabItemList: some View {
        HStack {
            ForEach(0..<attributeOptions.tabs.count, id: \.self) {
                index in
                Spacer()
                let tab = attributeOptions.tabs[index]
                tabItem(
                    imageName: selectedTab == index ? tab.selectedImageName : tab.imageName,
                    text: tab.text
                )
                .foregroundStyle(selectedTab == index ? .black : .gray)
            }
            Spacer()
        }
    }
    
    private func tabItem(imageName: String, text: String) -> some View {
        VStack {
            Spacer()
            Button {
                switch text {
                case "냉장고":
                    selectedTab = 0
                case "레시피":
                    selectedTab = 1
                case "앱 정보":
                    selectedTab = 2
                default:
                    selectedTab = 0
                }
            } label: {
                VStack {
                    Image(systemName: imageName)
                        .font(.title2)
                        .padding(.bottom, attributeOptions.paddingbetweenImageAndText)
                    Text(text)
                        .font(.caption2)
                }
                
            }
        }
    }
}



// MARK: Preview
#Preview {
    MainTabView()
}
