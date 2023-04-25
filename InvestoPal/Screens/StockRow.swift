//
//  StockRow.swift
//  InvestoPal
//
//  Created by Day Evan on 4/24/23.
//

import SwiftUI

struct StockRow: View {
    let stock: Stock
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(stock.symbol)
                .font(.headline)
            Text(stock.name)
                .font(.subheadline)
        }
    }
}

struct StockRow_Previews: PreviewProvider {
    static var previews: some View {
        StockRow(stock: Stock(symbol: "AAPL", name: "Apple Inc.", price: 133.48))
    }
}
