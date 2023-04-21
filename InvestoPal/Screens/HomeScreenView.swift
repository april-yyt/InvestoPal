//
//  HomeScreenView.swift
//  InvestoPal
//
//  Created by April Yang on 4/21/23.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        TabView {
                    Text("Home")
                        .tabItem {
                            Image(systemName: "1.circle")
                            Text("Home")
                        }
                    
                    Text("News")
                        .tabItem {
                            Image(systemName: "2.circle")
                            Text("News")
                        }
                    
                    Text("Invest")
                        .tabItem {
                            Image(systemName: "3.circle")
                            Text("Invest")
                        }
            
                    Text("Stock")
                        .tabItem {
                            Image(systemName: "3.circle")
                            Text("Stock")
                        }
            
                    Text("Account")
                        .tabItem {
                            Image(systemName: "3.circle")
                            Text("Account")
                        }
            
                }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
