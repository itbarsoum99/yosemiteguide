//
//  ModelData.swift
//  yosemiteguide
//
//  Created by Barsoum on 11/6/21.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var places: [Places] = load("places.json")
    
    var features: [Places] {
        places.filter { $0.isFeatured }
    }
    
    var categories: [String: [Places]] {
        Dictionary(
            grouping: places,
            by: { $0.category}
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
