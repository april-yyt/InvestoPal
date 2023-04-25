//
//  StockData.swift
//  InvestoPal
//
//  Created by Day Evan on 4/24/23.
//

import Combine
import XCAStocksAPI


class StockData: ObservableObject {
    @Published var stocks = [
        Stock(symbol: "AAPL", name: "Apple Inc.", price: 133.48),
        Stock(symbol: "AMZN", name: "Amazon.com Inc.", price: 3423.60),
        Stock(symbol: "FB", name: "Facebook Inc.", price: 315.94),
        Stock(symbol: "GOOG", name: "Alphabet Inc.", price: 2317.80),
        Stock(symbol: "MSFT", name: "Microsoft Corporation", price: 261.79),
        Stock(symbol: "BA", name: "The Boeing Company", price: 261.79),
        Stock(symbol: "DIS", name: "The Walt Disney Company", price: 261.79),
        Stock(symbol: "GE", name: "General Electric Company", price: 261.79),
        Stock(symbol: "NKE", name: "Nike, Inc", price: 261.79)
        
    ]
}
