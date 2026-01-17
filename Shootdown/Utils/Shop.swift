//
//  Shop.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import Combine

class Shop: ObservableObject {
    @Published var showingRevolver: Bool = false
    @Published var selectedRevolver: Revolver?
}
