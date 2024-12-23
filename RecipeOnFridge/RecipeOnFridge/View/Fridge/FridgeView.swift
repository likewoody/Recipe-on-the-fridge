//
//  FridgeView.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/21/24.
//

import SwiftUI

// MARK: View
struct FridgeView: View {
    @State var selected: String = "냉장고"
    @State var selectedCategory: Int = 0
    @State var isSystemImageTabbed: Bool = false
    let attributeOptions: AttributeOptions
    
    @State var vm = MoakData()
//    @State var items: [ItemModel] = []

    var body: some View {
        NavigationStack {
            VStack {
                Color.brown.ignoresSafeArea(.all)
                    .customNavigationBar(title: "냉장고를 부탁해 !", isSystemImage: true, isSystemImageTabbed: $isSystemImageTabbed)
                
                fridgeSegment
                
                fridgeBody
                
                Spacer()
            }
            .disabled(isSystemImageTabbed ? true : false)
            .overlay {
                FloatingAddButton()
                    .navigationBarBackButtonHidden()
                
                // move to tabbed segment
                if isSystemImageTabbed {
                    ArrangeItemList(attributeOptions: attributeOptions, isSystemImageTabbed: $isSystemImageTabbed)
                }
            }
        }
//        .onAppear {
//            items = vm.items
//        }
    }
    
    
//    // MARK: func
//    private func dataLoad() {
//        
//    }
//    
////    private func addDays(date: Int) -> Date {
////        Calendar.current.date(byAdding: .day, value: date, to: Date()) ?? Date()
////    }
}

// MARK: extension
extension FridgeView {
    private var fridgeBody: some View {
        ScrollView {
            ForEach(vm.items, id: \.id) { item in
                ForEach(FridgeSegment.allCases, id: \.self) {
                    fridgeBodyCondition(item:   item, fridgeSegment: $0.rawValue, category: $0.category)
                }
                
            }
            .padding()
        }
    }
    
    // Child View of fridgeBody
    private func fridgeBodyCondition(item: ItemModel, fridgeSegment: String, category: Int) -> some View {
        VStack {
            if selected == fridgeSegment && item.category == category {
                HStack {
                    moveToUpdateItem(item: item)
                }
                .customItemContainer(attributeOptions: attributeOptions)
            }
        }
    }
    
    // Chile View of fridgeBodyCondition
    private func moveToUpdateItem(item: ItemModel) -> some View {
        NavigationLink {
            UpdateItem()
                .navigationBarBackButtonHidden()
        } label: {
            Text(item.name)
                .padding()
                .font(.title2)
            Spacer()
            if let expDate = item.exp {
                Text("\(attributeOptions.dateFormmater.string(from: expDate)) 까지")
                    .padding()
                    .font(.title3)
            }
        }
    }
    
    // For Segement Title
    private var fridgeSegment: some View {
        Picker("Title", selection: $selected) {
            ForEach(FridgeSegment.allCases, id: \.self) {
                Text($0.rawValue)
                    .tag($0.rawValue)
            }
        }
        .pickerStyle(.segmented)
    }
}


// MARK: Preview
#Preview {
    FridgeView(attributeOptions: AttributeOptions.share)
}
