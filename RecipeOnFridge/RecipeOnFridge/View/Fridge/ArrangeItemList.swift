//
//  ArrangeItemList.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/23/24.
//

import SwiftUI

// MARK: View
struct ArrangeItemList: View {
    let attributeOptions: AttributeOptions
    @Binding var isSystemImageTabbed: Bool

    var body: some View {
        ZStack {
            arrangeItemListBackground
            
            itemListContainer
        }

    }
}

// MARK: extension
extension ArrangeItemList {
    private var arrangeItemListBackground: some View {
        Color.white
            .opacity(0.01)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                isSystemImageTabbed.toggle()
            }
    }
    
    private var itemListContainer: some View {
        VStack(content: {
            HStack {
                Spacer()
                itemList
            }
            Spacer()
        })
        .padding(.vertical, attributeOptions.fridgeArrangeTopPadding)
    }
    
    private var itemList: some View {
        VStack(alignment: .trailing, spacing: attributeOptions.fridgeArrangeEachHeightSpacing) {
        
            ForEach(FridgeArrangeItemList.allCases, id: \.self) {
                Button($0.rawValue) {
                    
                }
            }
            .frame(height: attributeOptions.fridgeArrangeHeight)
            .frame(width: UIScreen.main.bounds.width * 0.6)
            .foregroundStyle(.white)
            .background(.black.opacity(attributeOptions.fridgeBackgroundOpacity))
            .clipShape(.rect(cornerRadius: attributeOptions.fridgeItemContainerRadius))
        }
        .padding(.horizontal, attributeOptions.fridgeArrangeRightPadding)
    }
}



// MARK: Preview
#Preview {
//    GeometryReader { geo in
        VStack {
            FridgeView(attributeOptions: AttributeOptions.share)
                .overlay {
                    ArrangeItemList(attributeOptions: AttributeOptions.share, isSystemImageTabbed: .constant(true))
                }
        }
//    }
    
    
}
