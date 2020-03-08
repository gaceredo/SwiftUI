//
//  CartView.swift
//  MiniMeli
//
//  Created by Luis Aceredo on 11/9/19.
//  Copyright © 2019 Mercado Libre. All rights reserved.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cart: Cart
    
    var body: some View {
        NavigationView {
            List{
                ForEach(cart.items, id: \.self.id) { item in
                    Text(item.name)
                    
                }.onDelete(perform: delete(at:))
            }.navigationBarTitle("Carrito")
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func delete(at offsets: IndexSet) {
        cart.items.remove(atOffsets: offsets)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
             CartView()
        }
    }
}
