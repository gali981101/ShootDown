//
//  RevolverModel.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import Foundation

struct Revolver: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    
    var formattedPrice: String { return "$\(price)" }
}
