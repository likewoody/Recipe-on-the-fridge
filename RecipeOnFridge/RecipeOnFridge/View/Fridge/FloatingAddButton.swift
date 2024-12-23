//
//  FloatingAddButton.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/23/24.
//

import SwiftUI

struct FloatingAddButton: View {
    var body: some View {
        Color.clear
        .safeAreaInset(edge: .bottom) {
            HStack {
                Spacer()
                NavigationLink {
                    AddItem()
                } label: {
                    Circle()
                        .stroke(lineWidth: 1)
                        .ignoresSafeArea(.all)
                        .frame(height: 80)
                        .padding()
                        .padding(20)
                        .overlay {
                            Image(systemName: "plus")
                                .font(.largeTitle)
                        }
                        .foregroundStyle(.black)
                }
                
            }
        }
    }
}

#Preview {
    VStack {
        FridgeView(attributeOptions: AttributeOptions.share)
        FloatingAddButton()
    }
    
}
