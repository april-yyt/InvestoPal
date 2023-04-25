//
//  Stock.swift
//  InvestoPal
//
//  Created by Day Evan on 4/24/23.
//

import Foundation
struct Stock: Identifiable {
    let id = UUID()
    let symbol: String
    let name: String
    let price: Double
}
