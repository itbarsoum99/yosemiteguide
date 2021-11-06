//
//  CategoryItem.swift
//  yosemiteguide
//
//  Created by Barsoum on 11/6/21.
//

import SwiftUI

struct CategoryItem: View {
    var places: Places
    
    var body: some View {
        VStack(alignment: .leading) {
            places.image
                .renderingMode(.original)
                .resizable(resizingMode: .tile)
                .frame(width: 155.0, height: 155.0)
                .cornerRadius(5)
            Text(places.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(places: ModelData().places[6])
    }
}
