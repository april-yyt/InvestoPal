//
//  HomeScreenView.swift
//  InvestoPal
//
//  Created by April Yang on 4/21/23.
//

import SwiftUI

struct HomeScreenView: View {
    @StateObject var appVM = AppViewModel()
    var body: some View {
        TabView {
//            NavigationView {
//                HomeView()
//            }
//            .tabItem {
//                Image("icons8-home-16")
//                Text("Home")
//            }
            
            NavigationView {
                NewsView()
            }
            .tabItem {
                Image("icons8-magazine-16")
                Text("News")
            }
            
            NavigationView {
                NavigationStack {
                                MainListView()
                            }
                            .environmentObject(appVM)
            }
            .tabItem {
                Image("icons8-crowdfunding-16")
                Text("Invest")
            }
//
//            NavigationView {
//                InvestView()
//            }
//            .tabItem {
//                Image("icons8-combo-chart-16")
//                Text("Stock")
//            }
            
            NavigationView {
                AccountView()
            }
            .tabItem {
                Image("icons8-account-16")
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
