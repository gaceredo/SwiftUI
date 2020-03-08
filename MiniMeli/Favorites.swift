//
//  Favorites.swift
//  MiniMeli
//
//  Created by Samuel Sainz on 11/6/19.
//  Copyright © 2019 Mercado Libre. All rights reserved.
//

import Foundation

class Favorites {
    private(set) var items = [String]()

    func contains(_ item: Item) -> Bool {
        return items.contains(item.name)
    }

    func toggle(_ item: Item) {
        if let position = items.firstIndex(of: item.name) {
            items.remove(at: position)
        } else {
            items.append(item.name)
        }
    }
}
