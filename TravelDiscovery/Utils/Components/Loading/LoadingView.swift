//
//  LoadingView.swift
//  TravelDiscovery
//
//  Created by Locação on 23/02/21.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    enum Theme {
        case light
        case dark
        
        var color: UIColor {
            switch self {
            case .light:
                return .white
            case .dark:
                return .black
            }
        }
    }
    
    let theme: Theme
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.startAnimating()
        activityIndicator.color = theme.color
        return activityIndicator
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        // No need for implementation
    }
    
}

struct LoadingView: View {
    var body: some View {
        VStack {
            ActivityIndicator(theme: .light)
            Text("Loading...")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.white)
        }
        .padding(20)
        .background(Color.black)
        .cornerRadius(8)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
