//
//  CategoryRow.swift
//  landmarks
//
//  Created by Barsoum on 11/2/21.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Places]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { places in
                        NavigationLink(destination: PlacesDetail(places: places)) {
                            CategoryItem(places: places)
                        }
                    }
                }
            }
            .padding(.bottom)
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var places = ModelData().places
    
    static var previews: some View {
        CategoryRow(
            categoryName: places[0].category,
            items: Array(places.prefix(3))
        )
    }
}
