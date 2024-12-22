//
//  ContentView.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/21/24.
//

import SwiftUI

// MARK: View
struct MainTabView: View {
    @State var selectedTab: Int = 0
    let paddingbetweenImageAndText: CGFloat = 1
    let tabs = [
        (imageName: TabItemList.imageName.fridge, selectedImageName: TabItemList.selectedImageName.fridge, text: TabItemList.text.fridge),
        (imageName: TabItemList.imageName.recipe, selectedImageName: TabItemList.selectedImageName.recipe, text: TabItemList.text.recipe),
        (imageName: TabItemList.imageName.setting, selectedImageName: TabItemList.selectedImageName.setting, text: TabItemList.text.setting)
    ]
    
    var body: some View {
        VStack {
            Spacer()
            if selectedTab == 0 {
                FridgeView()
            } else if selectedTab == 1 {
                RecipeView()
            } else {
                AppInfoView()
            }
            Spacer()
            tabItemList
        }
        
    }
}


// MARK: extension
extension MainTabView {
    
    private var tabItemList: some View {
        HStack {
            ForEach(0..<tabs.count, id: \.self) {
                index in
                Spacer()
                let tab = tabs[index]
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
                        .padding(.bottom, paddingbetweenImageAndText)
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
