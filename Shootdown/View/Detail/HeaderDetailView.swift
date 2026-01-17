//
//  HeaderDetailView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct HeaderDetailView: View {
    
    // MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("各類槍械")
            
            Text(shop.selectedRevolver?.name ?? sampleRevolver.name)
                .font(.body)
                .fontWeight(.black)
        })
        .foregroundColor(.black)
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
        .padding()
}
