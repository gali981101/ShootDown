//
//  RatingsSizesDetailView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    
    // MARK: - BODY
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 3, content: {
            
            VStack(alignment: .leading, spacing: 3, content: {
                Text("評分")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
            })
            
            Spacer()
        })
    }
}

#Preview {
    RatingsSizesDetailView()
        .padding()
}
