//
//  CleanCryptoApp.swift
//  CleanCrypto
//
//  Created by kai on 4/12/24.
//

import SwiftUI

@main
struct CleanCryptoApp: App {
    init() {
        DIContainer.shared.registration()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
