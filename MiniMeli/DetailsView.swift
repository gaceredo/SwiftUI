//
//  DetailsView.swift
//  MiniMeli
//
//  Created by Luis Aceredo on 11/9/19.
//  Copyright © 2019 Mercado Libre. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    @State var item: Item
    @EnvironmentObject var cart: Cart

    var body: some View {
        
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.imageName).padding()
                Text(item.seller)
                    .padding()
                    .background(Color.blue)
                    .opacity(0.5)
                    .cornerRadius(5)
            }
            
            VStack { Text(item.name)
                .padding()
                .font(.title)
                Text(item.description)
            }
            
            Spacer()
            Button(action: {
                self.cart.items.append(self.item)
            }) {
                Image(systemName: "cart.fill")
                Text("Agregar al carrito")
            }
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        DetailsView(item: Item.itemExample)
        }
    }
}
