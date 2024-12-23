//
//  ItemContainerModifier.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/23/24.
//

import SwiftUI

struct ItemContainerModifier: ViewModifier {
    let attributeOptions: AttributeOptions
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.black)
            .frame(height: attributeOptions.fridgeItemContainerHeight)
            .padding()
            .background(.white)
            .clipShape(.rect(cornerRadius: 5))
            .padding(.vertical, attributeOptions.fridgeItemContainerVerticalPadding)
            .shadow(radius: 2, x: 1, y: 2)
    }
}

extension View {
    public func customItemContainer(attributeOptions: AttributeOptions) -> some View {
        return modifier(ItemContainerModifier(attributeOptions: attributeOptions))
    }
}
