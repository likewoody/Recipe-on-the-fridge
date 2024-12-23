//
//  MoakData.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/23/24.
//

import SwiftUI
import Combine

struct MoakDataService {
    @State var items: [ItemModel] = []
    let passThroughPublisher = PassthroughSubject<[ItemModel], Error>()
    
    init() {
        loadData()
    }
    
    private func loadData() {
        DispatchQueue.main.async {
            items.append(contentsOf: [
                ItemModel(id: 1, name: "고등어", exp: nil, category: 1),
                ItemModel(id: 2, name: "양파", exp: Date(), category: 0),
                ItemModel(id: 3, name: "마늘", exp: Date().addingTimeInterval(10), category: 1),
                ItemModel(id: 4, name: "감자", exp: Date() + 7, category: 1),
                ItemModel(id: 5, name: "참치", exp: Date() + 100, category: 2)
            ])
            
            passThroughPublisher.send(items)
        }
    }
}
