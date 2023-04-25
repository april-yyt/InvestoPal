//
//  StockMenuView.swift
//  InvestoPal
//
//  Created by Day Evan on 4/24/23.
//

import SwiftUI
import XCAStocksAPI

let api = XCAStocksAPI()

struct StockMenuView: View {
    @StateObject var stockData = StockData()
    
    var body: some View {
        NavigationView {
            List(stockData.stocks) { stock in
                NavigationLink(destination: StockDetailsView(stock: stock)) {
                    StockRow(stock: stock)
                }
            }
            .navigationBarTitle("Stocks")
        }
    }
}

struct StockMenuView_Previews: PreviewProvider {
    static var previews: some View {
        StockMenuView()
    }
}
