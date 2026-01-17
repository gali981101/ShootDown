//
//  TopPartDetailView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct TopPartDetailView: View {
    
    // MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 15, content: {
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text("價格")
                    .fontWeight(.semibold)
                
                Text(shop.selectedRevolver?.formattedPrice ?? sampleRevolver.formattedPrice)
                    .font(.body)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedRevolver?.image ?? sampleRevolver.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        })
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
        .padding()
}
