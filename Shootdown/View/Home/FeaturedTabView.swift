//
//  FeaturedTabView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct FeaturedTabView: View {
    
    var body: some View {
        TabView {
            ForEach(posters) { poster in
                FeaturedItemView(poster: poster)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(
            .page(backgroundDisplayMode: .always)
        )
    }
}

#Preview {
    FeaturedTabView()
}
