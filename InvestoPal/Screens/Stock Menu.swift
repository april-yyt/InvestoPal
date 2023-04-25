//
//  Stock Menu.swift
//  InvestoPal
//
//  Created by Day Evan on 4/24/23.
//

import Foundation
import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            Text("Stock Menu")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 50)
            Spacer()
            Text("Choose a stock:")
                .font(.title)
                .fontWeight(.medium)
                .padding(.bottom, 30)
            Button(action: {
                // Add action to show stock details
            }) {
                Text("Apple")
                    .fontWeight(.semibold)
            }
            Button(action: {
                // Add action to show stock details
            }) {
                Text("Amazon")
                    .fontWeight(.semibold)
            }
            Button(action: {
                // Add action to show stock details
            }) {
                Text("Facebook")
                    .fontWeight(.semibold)
            }
            Spacer()
        }
    }
}
