//
//  CoinTracker-iOSApp.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/12/24.
//

import SwiftUI

@main
struct CoinTracker_iOSApp: App {
    init() {
        DIContainer.shared.registration()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
