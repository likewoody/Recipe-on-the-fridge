//
//  CustomNavigationBar.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/21/24.
//

import SwiftUI

struct NavigationBarModifier: ViewModifier {
    let title: String
    let isSystemImage: Bool
    @Binding var isSystemImageTabbed: Bool
    
    func body(content: Content) -> some View {
        content
            .opacity(AttributeOptions.share.appInfoColorOpacity)
            .frame(height: AttributeOptions.share.appInfoTopHeight)
            .overlay {
                HStack {
                    Text(title)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(AttributeOptions.share.appInfoLeftAndRightSpacing)
//                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                    
                    if isSystemImage {
                        Button {
                            isSystemImageTabbed.toggle()
                        } label: {
                            Image(systemName: "ellipsis")
                                .padding(AttributeOptions.share.appInfoLeftAndRightSpacing)
                        }
                        .foregroundStyle(.black)
                    }

                }
            }
    }
}

extension View {
    public func customNavigationBar(title: String, isSystemImage: Bool = false, isSystemImageTabbed: Binding<Bool> = .constant(false)) -> some View {
        self.modifier(NavigationBarModifier(title: title, isSystemImage: isSystemImage, isSystemImageTabbed: isSystemImageTabbed))
    }
}
