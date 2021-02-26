//
//  ResponseAPI.swift
//  TravelDiscovery
//
//  Created by Locação on 24/02/21.
//

import Foundation

struct ResponseAPI<T> {
    let value: T
    let response: URLResponse
}
