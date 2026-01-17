//
//  FeaturedItemView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // MARK: - PROPERTY
    
    let poster: Poster
    
    // MARK: - BODY
    
    var body: some View {
        Image(poster.image)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    FeaturedItemView(poster: posters[5])
        .background(.clear)
}
