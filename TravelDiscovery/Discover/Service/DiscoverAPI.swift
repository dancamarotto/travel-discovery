//
//  DiscoverAPI.swift
//  TravelDiscovery
//
//  Created by Danilo Camarotto on 25/02/21.
//

import Foundation
import Combine

class DiscoverAPI {
    
    private let manager = APIManager()
    
    func fetchDetails(category: String) -> AnyPublisher<[Place], Error> {
        let paramName = "name=\(category.lowercased())"
            .addingPercentEncoding(withAllowedCharacters: .urlUserAllowed)
        guard let url = URL(string: "https://travel.letsbuildthatapp.com/travel_discovery/category?\(paramName ?? "")") else {
            return Result
                .Publisher(.failure(APIError.invalidURL))
                .eraseToAnyPublisher()
        }
        let urlRequest = URLRequest(url: url)
        
        return manager.request(urlRequest)
            .map(\.value)
            .eraseToAnyPublisher()
    }
    
}
