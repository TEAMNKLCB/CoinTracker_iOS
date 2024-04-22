//
//  PriceDetailView.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/22/24.
//

import SwiftUI

struct PriceDetailView: View {
    let coin: PriceCoin
    
    var body: some View {
        Text("PriceDetailView")
    }
}

#Preview {
    PriceDetailView(coin: .mock)
}
