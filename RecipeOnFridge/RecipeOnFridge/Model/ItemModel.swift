//
//  ItemModel.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/23/24.
//

import Foundation

struct ItemModel: Codable{
    let id: Int
    let name: String
    let exp: Date?
    let category: Int
}

extension ItemModel: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
