//
//  APIManager.swift
//  TravelDiscovery
//
//  Created by Locação on 24/02/21.
//

import Foundation
import Combine

enum APIError: Error {
    case badStatus(Int)
    case invalidURL
}

final class APIManager {
    
    func request<T: Decodable>(_ request: URLRequest) -> AnyPublisher<ResponseAPI<T>, Error> {
        return URLSession.shared
            .dataTaskPublisher(for: request)
            .tryMap { result -> ResponseAPI<T> in
                if let statusCode = (result.response as? HTTPURLResponse)?.statusCode, statusCode >= 400 {
                    throw APIError.badStatus(statusCode)
                }
                let value = try JSONDecoder().decode(T.self, from: result.data)
                return ResponseAPI(value: value, response: result.response)
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
}
