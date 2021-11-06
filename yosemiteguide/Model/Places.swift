//
//  Places.swift
//  yosemiteguide
//
//  Created by Barsoum on 11/6/21.
//

import Foundation
import SwiftUI

struct Places: Hashable, Codable, Identifiable {
    var name: String
    var category: String
    var id: Int
    var isFeatured: Bool
    var isFavorite: Bool
    var description: String
    private var imageName: String
    var image: Image {
        Image(imageName)
    }}
