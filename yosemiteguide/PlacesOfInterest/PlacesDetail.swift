//
//  PlacesDetail.swift
//  yosemiteguide
//
//  Created by Barsoum on 11/6/21.
//

import SwiftUI

struct PlacesDetail: View {
    @EnvironmentObject var modelData: ModelData
    var places: Places
    
    var placesIndex: Int {
        modelData.places.firstIndex(where: { $0.id == places.id})!
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            CircleImage(image: places.image)
                .frame(width: 200, height: 200)
                
            
            VStack(alignment: .leading) {
                Text(places.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.17254901960784313, green: 0.17254901960784313, blue: 0.17254901960784313))
                Divider()
                
                Text("About \(places.name)")
                    .font(.title2)
                    .padding(.vertical, 7.0)
                
                Text(places.description)
                    .font(.body)
                
                Divider()
                
                Text("Description from Wikipedia")
                    .font(.caption)
            }
            .padding()
        }
        .navigationTitle(places.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PlacesDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        PlacesDetail(places: ModelData().places[0])
            .environmentObject(modelData)
    }
}
