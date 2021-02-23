//
//  PopularRestaurantsView.swift
//  TravelDiscovery
//
//  Created by Danilo Camarotto on 22/02/21.
//

import SwiftUI

struct PopularRestaurantsView: View {
    
    let restaurants: [Restaurant] = [
        .init(imageName: "paintpalette.fill", name: "Japan's Finest Tapas"),
        .init(imageName: "paintpalette.fill", name: "Bar & Grill"),
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Popular places to eat")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 12, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8.0) {
                    ForEach(restaurants, id: \.self) { restaurant in
                        HStack {
                            Image(systemName: restaurant.imageName)
                                .resizable()
                                .frame(width: 60, height: 60)
                                .scaledToFill()
                                .clipped()
                                .cornerRadius(5.0)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 6)
                            
                            VStack(alignment: .leading, spacing: 6) {
                                HStack {
                                    Text(restaurant.name)
                                    Spacer()
                                    Button(action: {
                                        
                                    }, label: {
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.gray)
                                    })
                                }
                                
                                HStack {
                                    Image(systemName: "star.fill")
                                    Text("4.7 • Sushi • $$")
                                }
                                
                                Text("Tokyo, Japan")
                            }.font(.system(size: 12, weight: .semibold))
                            
                            Spacer()
                                
                        }.frame(width: 240)
                        .padding(.vertical, 8)
                        .asTile()
                        .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct PopularRestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        PopularRestaurantsView()
            .previewLayout(.sizeThatFits)
    }
}
