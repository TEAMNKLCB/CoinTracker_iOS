//
//  CleanCryptoApp.swift
//  CleanCrypto
//
//  Created by kai on 4/12/24.
//

import SwiftUI

@main
struct CleanCryptoApp: App {
    @StateObject var viewModel: MainViewModel = MainViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
