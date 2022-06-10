//
//  CodableBundleExtension.swift
//  TouchDownApp
//
//  Created by Manny Alvarez on 10/06/2022.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the JSON File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("❌❌❌  FAILED to locate \(file) in bundle.")
        }
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("❌❌❌  FAILED to load data \(file) from bundle.")
        }
        // 3. Create a decoder
        let decoder = JSONDecoder()
        // 4. Create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("❌❌❌  FAILED to decode \(file) from bundle.")
        }
        // 5. Return the ready to use data
        return decodedData
    }
}
