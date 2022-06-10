//
//  Shop.swift
//  TouchDownApp
//
//  Created by Manny Alvarez on 10/06/2022.
//

import Foundation


class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
