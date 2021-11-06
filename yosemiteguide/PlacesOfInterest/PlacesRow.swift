//
//  PlacesRow.swift
//  yosemiteguide
//
//  Created by Barsoum on 11/6/21.
//

import SwiftUI

struct PlacesRow: View {
    var place: Places
    var body: some View {
        HStack {
            Text(place.name)
                .padding(.trailing)
                .padding(.vertical)
            Spacer()
        }
    }
}

struct PlacesRow_Previews: PreviewProvider {
    static var places = ModelData().places
    
    static var previews: some View {
        Group {
            PlacesRow(place: places[0])
            PlacesRow(place: places[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
