//
//  AppRouter.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/22/24.
//

import SwiftUI

struct AppRouter<Destination: DestinationProtocol>: ViewModifier {
    @Binding var destination: Destination? // View
    
    func body(content: Content) -> some View {
        ZStack {
            content
        }
    }
}
extension View {
    func route<Destination: DestinationProtocol>(to destination: Binding<Destination?>) -> some View {
        modifier(AppRouter(destination: destination))
    }
}
