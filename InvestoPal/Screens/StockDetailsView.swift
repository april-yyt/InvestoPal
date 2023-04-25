//
//  StockDetailsView.swift
//  InvestoPal
//
//  Created by Day Evan on 4/24/23.
//

import SwiftUI
import SwiftUICharts
import XCAStocksAPI



struct StockDetailsView: View {
    let stock: Stock
    let stocks = XCAStocksAPI()
    var body: some View {
        VStack(alignment: .leading) {
            Text(stock.name)
                .font(.title)
            Text(stock.symbol)
                .font(.subheadline)
                .foregroundColor(.secondary)
            Divider()
            Text("Price: \(stock.price, specifier: "%.2f")")
                .font(.title2)
                .padding(.top)
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(stock.symbol))

    }
}

struct StockDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        StockDetailsView(stock: Stock(symbol: "AAPL", name: "Apple Inc.", price: 133.48))
    }
}
