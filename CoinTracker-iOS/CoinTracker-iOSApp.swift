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
        initToolbarColor()
    }
    
    var body: some Scene {
        WindowGroup {
            MainCoordinator()
        }
    }
}

extension CoinTracker_iOSApp {
    private func initToolbarColor() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .clear // 네비게이션 바의 배경색 변경
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white] // 타이틀 색상 변경

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}
