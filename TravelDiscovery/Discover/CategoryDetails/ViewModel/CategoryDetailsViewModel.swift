//
//  CategoryDetailsViewModel.swift
//  TravelDiscovery
//
//  Created by Locação on 25/02/21.
//

import Foundation
import Combine

class CategoryDetailsViewModel: ObservableObject {
    
    @Published
    var isLoading = true
    
    @Published
    var places = [Place]()
    
    let discoverAPI = DiscoverAPI()
    var subscriptions = Set<AnyCancellable>()
    
    init(name: String) {
        discoverAPI
            .fetchDetails(category: name)
            .sink { [weak self] completion in
                switch completion {
                case .failure(_):
                    self?.isLoading = false
                    self?.places = []
                default:
                    break
                }
            } receiveValue: { [weak self] places in
                self?.isLoading = false
                self?.places = places
            }
            .store(in: &subscriptions)

    }
    
}
