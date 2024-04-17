//
//  CoinRow.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/17/24.
//

import SwiftUI

struct CoinRow: View {
    var coin: PriceCoin
    
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
                Text(coin.name)
                    .foregroundColor(Color.white)
                    .font(.subheadline)
                Text(coin.symbol)
                    .foregroundColor(Color.gray)
                    .font(.subheadline)
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 5) {
                Text(coin.currentPrice.formattedAsCurrency)
                    .foregroundColor(Color.white)
                    .font(.subheadline)
                Text("\(coin.priceChangePercentage24H)")
                    .foregroundStyle(
                        coin.priceChangePercentage24H.sign == .minus
                        ? Color.red
                        : Color.lightGreen
                    )
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    CoinRow(coin: .mock)
}
