//
//  CategoryItemView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct CategoryItemView: View {
    
    // MARK: - PROPERTY
    
    let category: Category
    
    // MARK: - BODY
    
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                
                Text(category.name)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
            }
            .padding()
            .background(Color.black.cornerRadius(12))
        })
    }
}

#Preview {
    CategoryItemView(category: categories[3])
        .padding()
        .background(colorBackground)
}
