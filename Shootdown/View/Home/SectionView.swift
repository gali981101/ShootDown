//
//  SectionView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct SectionView: View {
    
    // MARK: - PROPERTY
    
    @State var rotateClockwise: Bool
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("品項目錄")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(Color(.black).cornerRadius(12))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockwise: true)
        .padding()
        .background(colorBackground)
}
