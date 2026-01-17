//
//  ContentView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    
    var body: some View {
        
        ZStack {
            if shop.showingRevolver == false && shop.selectedRevolver == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication
                            .shared
                            .connectedScenes
                            .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                            .first { $0.isKeyWindow }?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            
                            FeaturedTabView()
                                .frame(height: (UIScreen.current?.bounds.size.width ?? 390) / 1.475)
                                .padding(.vertical, 20)
                            
                            CategoryGridView()
                            
                            TitleView(title: "客製左輪")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(revolvers) { revolver in
                                    ProductItemView(revolver: revolver)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            
                                            withAnimation(.easeOut) {
                                                shop.selectedRevolver = revolver
                                                shop.showingRevolver = true
                                            }
                                        }
                                }
                            })
                            .padding(15)
                            
                            TitleView(title: "經典款")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    })
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
