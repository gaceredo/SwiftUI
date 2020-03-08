//
//  Item.swift
//  MiniMeli
//
//  Created by Samuel Sainz on 11/5/19.
//  Copyright © 2019 Mercado Libre. All rights reserved.
//

import Foundation

struct Item: Codable, Identifiable {
    let id: UUID
    let name: String
    let imageName: String
    let freeShipping: Bool
    let seller: String
    let price: Int
    let currency: String
    let description: String
    
    #if DEBUG
    static let itemExample = Item(id: UUID(), name: "Notebook Lenovo Core I3", imageName: "lenovo", freeShipping: true, seller: "NNet", price: 399, currency: "U$S", description: "ProcesadorIntel Core i3 (8th Gen) 8130U / 2.2 GHz\r\nMax Turbo Speed 3.4 GHz\r\nCache de MemoriaInstalada 4 MB\r\nMemoriaRAM 4 GB DDR4 2133mhz.Maxima soportada 16 GB\r\nPantalla LCD Backlight Technology LED backlight 15.6\r\nImage Aspect Ratio 16:9\r\nMonitor Features anti-glare\r\nType LED\r\nDiagonal Size (metric) 39.6 cm\r\nDisplay Resolution Abbreviation HD\r\nProcesador grafico Intel UHD Graphics 620\r\nSonido Stereo, microfono incorporado.\r\nDisco Duro 1tb\r\nINPUT\r\nWiFi 802.11a/b/g/n/ac, Bluetooth 4.1\r\nLector de tarjetas4 en 1\r\nSoporta Flash Memory MultiMediaCard, SD Memory Card, SDHC Memory Card, SDXC Memory Card\r\nBateria Wh2-cell tecnologia lithium ion. 5 horas aproximadas de trabajo.\r\nConectores:\r\n2 x USB 3.1 Gen 1/USB 3.0\r\nUSB-C 3.1 Gen 1\r\nLAN\r\nHDMI\r\nHeadphone/microphone combo jack")
    #endif
}
