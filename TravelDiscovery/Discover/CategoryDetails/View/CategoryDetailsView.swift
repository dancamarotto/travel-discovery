//
//  CategoryDetailsView.swift
//  TravelDiscovery
//
//  Created by Locação on 23/02/21.
//

import SwiftUI
import Kingfisher

struct Place: Decodable, Hashable {
    let name: String
    let thumbnail: String
}

struct CategoryDetailsView: View {
    
    private let name: String
    
    @ObservedObject
    private var viewModel: CategoryDetailsViewModel
    
    init(name: String) {
        self.name = name
        self.viewModel = .init(name: name)
    }
    
    var body: some View {
        if viewModel.isLoading {
            LoadingView()
        } else if viewModel.places.isEmpty {
            Text("Ops.. could't fetch any place :(")
        } else {
            ScrollView {
                ForEach(viewModel.places, id: \.self) { place in
                    VStack(alignment: .leading, spacing: 0) {
                        KFImage(URL(string: place.thumbnail))
                            .resizable()
                            .fade(duration: 0.25)
                            .scaledToFill()
                        Text(place.name)
                            .font(.system(size: 12, weight: .semibold))
                            .padding()
                    }.asTile()
                    .padding()
                }
            }.navigationBarTitle(name, displayMode: .inline)
        }
    }
}

struct CategoryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CategoryDetailsView(name: "art")
        }
    }
}
