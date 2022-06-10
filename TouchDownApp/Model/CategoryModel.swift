//
//  CategoryModel.swift
//  TouchDownApp
//
//  Created by Manny Alvarez on 10/06/2022.
//

import Foundation


struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
