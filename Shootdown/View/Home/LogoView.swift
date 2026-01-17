//
//  LogoView.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

struct LogoView: View {
    
    var body: some View {
        HStack(spacing: 4) {
            Text("Shoot".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    LogoView()
        .padding()
}
