//
//  MoakData.swift
//  RecipeOnFridge
//
//  Created by Woody on 12/23/24.
//

import Combine
import SwiftUI

@Observable class MoakData{
    @ObservationIgnored private let service = MoakDataService()
    @ObservationIgnored private var cancellables = Set<AnyCancellable>()
    var items: [ItemModel] = []
    
    
    init() {
        loadData()
    }
    
    private func loadData() {
        service.passThroughPublisher
            .receive(on: DispatchQueue.main)
////            .tryMap({ $0 })
            .sink { completion in
                switch completion {
                case .finished:
                    print("Complted load Data !")
                case .failure(let error):
                    print("Error load Data \(error)")
                }
            } receiveValue: { [weak self] returnValue in
                self?.items = returnValue
                print(self?.items as Any)
            }
            .store(in: &cancellables)
//
    }
}
