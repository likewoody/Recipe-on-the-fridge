//
//  AddItem.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/23/24.
//

import SwiftUI

struct AddItem: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            
            
            Spacer()
            
            Button("완료") {
                dismiss()
            }
            .frame(height: 80)
            .frame(maxWidth: .infinity)
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: 15))
            .font(.title2)
            .padding()
            
        }
    }
}

#Preview {
    AddItem()
}
