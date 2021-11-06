//
//  ContentView.swift
//  yosemiteguide
//
//  Created by Barsoum on 11/6/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star.fill")
                }
                .tag(Tab.featured)
            POIList()
                .tabItem{
                    Label("Places", systemImage: "binoculars.fill")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
