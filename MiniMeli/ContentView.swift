//
//  ContentView.swift
//  MiniMeli
//
//  Created by Samuel Sainz on 11/5/19.
//  Copyright © 2019 Mercado Libre. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let items = Bundle.main.decode([Item].self, from: "items.json")
    
    var body: some View {
        NavigationView {
            List(items) { item in
                NavigationLink(destination: DetailsView(item: item)) {
                    Image(item.imageName)
                        .resizable()
                        .frame(width: 40, height: 40)
                    VStack (alignment: .leading){
                        Text(item.name)
                        Text("$\(item.price)")
                    }
                }
                
            }.navigationBarTitle("La mejor app")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { ContentView() }
    }
}

