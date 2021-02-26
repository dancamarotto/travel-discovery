//
//  PopularDestinationView.swift
//  TravelDiscovery
//
//  Created by Danilo Camarotto on 22/02/21.
//

import SwiftUI

struct PopularDestinationView: View {
    
    let destinations: [Destination] = [
        .init(imageName: "paintpalette.fill", city: "Paris", country: "France"),
        .init(imageName: "paintpalette.fill", city: "London", country: "England")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Popular destinations")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 12, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10.0) {
                    ForEach(destinations, id: \.self) { destination in
                        VStack(alignment: .leading, spacing: 2) {
                            
                            Image(systemName: destination.imageName)
                                .resizable()
                                .frame(width: 125, height: 125)
                                .scaledToFill()
                                .cornerRadius(5.0)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 6)
                            
                            Text(destination.city)
                                .font(.system(size: 12, weight: .semibold))
                                .padding(.horizontal, 12)
                            Text(destination.country)
                                .font(.system(size: 12, weight: .semibold))
                                .padding(.horizontal, 12)
                                .padding(.bottom, 8)
                                .foregroundColor(.gray)
                        }
                        .asTile()
                        .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct PopularDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        PopularDestinationView()
            .previewLayout(.sizeThatFits)
    }
}
