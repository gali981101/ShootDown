//
//  BrandItemView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct BrandItemView: View {
    
    // MARK: - PROPERTY
    
    let brand: Brand
    
    // MARK: - BODY
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipped()                      
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        
    }
}

#Preview {
    BrandItemView(brand: brands[0])
        .background(colorBackground)
}
