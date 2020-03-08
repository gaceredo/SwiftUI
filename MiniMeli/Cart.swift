//
//  Cart.swift
//  MiniMeli
//
//  Created by Samuel Sainz on 11/6/19.
//  Copyright © 2019 Mercado Libre. All rights reserved.
//

import Foundation

class Cart: ObservableObject {
  @Published  var items = [Item]()
}

