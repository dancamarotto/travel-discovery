//
//  DiscoverView.swift
//  TravelDiscovery
//
//  Created by Danilo Camarotto on 22/02/21.
//

import SwiftUI

struct DiscoverView: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9979444146, green: 0.7022868395, blue: 0.2602627575, alpha: 1)), Color(#colorLiteral(red: 0.9998653531, green: 0.5753672719, blue: 0.2554458678, alpha: 1))]),
                               startPoint: .top, endPoint: .center)
                    .ignoresSafeArea()
                
                Color.discoverBackground
                    .offset(y: 400)
                
                ScrollView {
                    
                    SearchView()
                    
                    DiscoverCategoriesView()
                    
                    VStack {
                        PopularDestinationView()
                        PopularRestaurantsView()
                        TrendingCreatorsView()
                    }.background(Color.discoverBackground)
                    .cornerRadius(16)
                    .padding(.top, 32)
                }
            }.navigationTitle("Discover")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
