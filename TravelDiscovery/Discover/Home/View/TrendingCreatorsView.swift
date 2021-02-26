//
//  TrendingCreatorsView.swift
//  TravelDiscovery
//
//  Created by Danilo Camarotto on 22/02/21.
//

import SwiftUI

struct TrendingCreatorsView: View {
    
    let users: [User] = [
        .init(name: "Amy Adams", imageName: "paintpalette.fill"),
        .init(name: "Danilo Camarotto", imageName: "paintpalette.fill")
    ]
    var body: some View {
        VStack {
            HStack {
                Text("Trending Creators")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 12, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 12) {
                    ForEach(users, id: \.self) { user in
                        VStack {
                            Image(systemName: user.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .cornerRadius(30)
                                .shadow(color: .init(.sRGB, white: 0.8, opacity: 1.0),
                                        radius: 4, x: 0.0, y: 2.0)
                            
                            Text(user.name)
                                .font(.system(size: 11, weight: .semibold))
                                .multilineTextAlignment(.center)
                        }.frame(width: 60)
                        .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}


struct TrendingCreatorsView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingCreatorsView()
            .previewLayout(.sizeThatFits)
    }
}
