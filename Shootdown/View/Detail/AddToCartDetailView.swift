//
//  AddToCartDetailView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    // MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("加入購物車".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(.black)
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
}
