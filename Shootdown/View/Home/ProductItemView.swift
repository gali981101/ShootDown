//
//  ProductItemView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct ProductItemView: View {
    
    // MARK: - PROPERTY
    
    let revolver: Revolver
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6, content: {
            
            ZStack {
                Image(revolver.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(.white)
            .cornerRadius(12)
            
            Text(revolver.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(revolver.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })
    }
}

#Preview {
    ProductItemView(revolver: revolvers[0])
        .padding()
        .background(.white)
}
