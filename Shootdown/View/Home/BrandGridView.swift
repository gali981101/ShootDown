//
//  BrandGridView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct BrandGridView: View {
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            })
            .frame(height: 450)
            .padding(15)
        })
    }
}

#Preview {
    BrandGridView()
        .background(colorBackground)
}
