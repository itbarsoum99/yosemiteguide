//
//  POIList.swift
//  yosemiteguide
//
//  Created by Barsoum on 11/6/21.
//

import SwiftUI

struct POIList: View {
    @EnvironmentObject var modelData: ModelData
    var places: [Places] {
        modelData.places
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach (places) { places in
                    NavigationLink(destination: PlacesDetail(places: places)) {
                        PlacesRow(place: places)
                    }
                }
            }
            .navigationTitle("Places")
        }
    }
}

struct POIList_Previews: PreviewProvider {
    static var previews: some View {
        POIList()
            .environmentObject(ModelData())
    }
}
