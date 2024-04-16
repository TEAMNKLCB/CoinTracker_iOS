//
//  CoinRow.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/17/24.
//

import SwiftUI

struct CoinRow: View {
    var coin: Coin
    
    var body: some View {
        HStack {
            AsyncImage(url: coin.imageURL) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFit()
                } else {
                    ProgressView()
                }
            }
            .frame(width: 30, height: 30)

            VStack(alignment: .leading, spacing: 5) {
                Text("Bitcoin")
                    .foregroundColor(Color.white)
                    .font(.subheadline)
                Text("btc")
                    .foregroundColor(Color.gray)
                    .font(.subheadline)
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 5) {
                Text("₩62,465.00")
                    .foregroundColor(Color.white)
                    .font(.subheadline)
                Text("-2.58973")
                    .foregroundStyle(Color.red)
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    CoinRow(coin: .mock)
}
