//
//  TitleView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct TitleView: View {
    
    // MARK: - PREVIEW
    
    var title: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.black)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview {
    TitleView(title: "客製左輪")
      .background(colorBackground)
}
