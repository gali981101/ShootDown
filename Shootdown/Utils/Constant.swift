//
//  Constant.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import SwiftUI

let posters: [Poster] = Bundle.main.decode("poster.json")
let categories: [Category] = Bundle.main.decode("category.json")
let revolvers: [Revolver] = Bundle.main.decode("revolver.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleRevolver: Revolver = revolvers[0]

let colorBackground: Color = Color(.white)
let colorGray: Color = Color(UIColor.systemGray4)

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10

var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

let feedback = UIImpactFeedbackGenerator(style: .medium)
