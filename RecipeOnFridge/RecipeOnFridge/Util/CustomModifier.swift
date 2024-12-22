//
//  CustomNavigationBar.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/21/24.
//

import SwiftUICore

struct NavigationBarModifier: ViewModifier {
    let title: String
    
    func body(content: Content) -> some View {
        content
            .opacity(AttributeOptions.share.colorOpacity)
            .frame(height: AttributeOptions.share.topHeight)
            .overlay {
                HStack {
                    Text(title)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(AttributeOptions.share.leftAndRightSpacing)
                        .foregroundStyle(.white)
                    Spacer()
                }
            }
    }
}

extension View {
    public func customNavigationBar(title: String) -> some View {
        self.modifier(NavigationBarModifier(title: title))
    }
}
