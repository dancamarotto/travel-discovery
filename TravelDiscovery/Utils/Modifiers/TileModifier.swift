//
//  TileModifier.swift
//  TravelDiscovery
//
//  Created by Danilo Camarotto on 22/02/21.
//

import SwiftUI

struct TileModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        let shadowColor = Color.init(.sRGB, white: 0.8, opacity: 1.0)
        return content
            .background(Color.white)
            .cornerRadius(5.0)
            .shadow(color: shadowColor, radius: 4, x: 0.0, y: 2.0)
    }
    
}

extension View {
    func asTile() -> some View {
        modifier(TileModifier())
    }
}
