//
//  CodableBundleExtension.swift
//  Shootdown
//
//  Created by Terry Jason on 2026/1/17.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ fileName: String) -> T {
        let parts = fileName.split(separator: ".")
        guard parts.count == 2 else {
            fatalError("File name must be in format 'name.extension'")
        }
        
        let name = String(parts[0])
        let ext = String(parts[1])
        
        guard let url = self.url(forResource: name, withExtension: ext) else {
            fatalError("Failed to locate \(fileName) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(fileName) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode(T.self, from: data)
            return decodedData
        } catch {
            fatalError("Failed to decode \(fileName): \(error)")
        }
    }
}
