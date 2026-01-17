//
//  FooterView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct FooterView: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("我們以親民的價格，打造兼具歷史靈魂與現代工藝的西部武器，每一件都是為真正懂得西部精神的人而生。")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.black)
                .layoutPriority(1)
            
            Text("版權所有 © Gali Lee 保留所有權利")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
        .padding()
    }
}

#Preview {
    FooterView()
        .background(colorBackground)
}
