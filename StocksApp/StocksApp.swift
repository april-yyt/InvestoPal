//
//  InvestoPal.swift
//  InvestoPal
//
//  Created by April Yang on 4/26/23.
//

import SwiftUI
import Firebase
//@main
//struct StocksApp: App {
//
//    @StateObject var appVM = AppViewModel()
//
//    var body: some Scene {
//        WindowGroup {
//            NavigationStack {
//                MainListView()
//            }
//            .environmentObject(appVM)
//        }
//    }
//}

//class AppDelegate: NSObject, UIApplicationDelegate {
//  func application(_ application: UIApplication,
//                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    FirebaseApp.configure()
//
//    return true
//  }
//}

@main
struct StocksApp: App {
    
    // register app delegate for Firebase setup
//      @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

