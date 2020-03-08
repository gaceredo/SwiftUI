//
//  AppView.swift
//  MiniMeli
//
//  Created by Luis Aceredo on 11/9/19.
//  Copyright © 2019 Mercado Libre. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
            TabView {
                   ContentView()
                    .tabItem {
                        VStack {
                            Image(systemName: "list.bullet")
                            Text("Home")
                        }
                    }.tag(0)
                    
                CartView()
                .tabItem {
                    VStack {
                        Image(systemName: "cart.fill")
                        Text("Cart")
                    }
                }.tag(1)
            }
    }
}
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
       AppView() 
    }
}
