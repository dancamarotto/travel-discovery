//
//  LazyViewNavigation.swift
//  TravelDiscovery
//
//  Created by Locação on 26/02/21.
//

import SwiftUI

struct LazyViewNavigation<Content: View>: View {
    
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
