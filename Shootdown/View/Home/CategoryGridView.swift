//
//  CategoryGridView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct CategoryGridView: View {
    
    // MARK: - BODY
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false, content: {
            
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            })
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })
    }
}

#Preview {
    CategoryGridView()
        .padding()
        .background(colorBackground)
}
