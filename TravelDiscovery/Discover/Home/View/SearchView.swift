//
//  SearchView.swift
//  TravelDiscovery
//
//  Created by Danilo Camarotto on 22/02/21.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        HStack() {
            Image(systemName: "magnifyingglass")
            Text("Where do you want to go?")
            Spacer()
        }.foregroundColor(.white)
        .font(.system(size: 14, weight: .semibold))
        .padding()
        .background(Color(.init(white: 1.0, alpha: 0.3)))
        .cornerRadius(10)
        .padding()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .background(Color.black)
            .previewLayout(.sizeThatFits)
    }
}
