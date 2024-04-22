//
//  PriceCoin.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/17/24.
//

import Foundation

struct PriceCoin: Decodable, Equatable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, totalVolume: Int
    let high24H, low24H, priceChange24H, priceChangePercentage24H: Double
    let marketCapChange24H, marketCapChangePercentage24H, circulatingSupply, totalSupply: Double
    let maxSupply: Double?

    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
    }
}

extension PriceCoin {
    var imageURL: URL? {
        let safeURL = image.trimmingString()
        return URL(string: safeURL)
    }
}

extension PriceCoin {
    static let mock: Self = .init(
        id: "test1", symbol: "test1", name: "test1", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", currentPrice: 21747, marketCap: 419320825566, marketCapRank: 100, totalVolume: 50153133497, high24H: 22615, low24H: 21596, priceChange24H: -868.336685288763, priceChangePercentage24H: -3.83958, marketCapChange24H: -15645722770.546387, marketCapChangePercentage24H: -3.59699, circulatingSupply: 19286950, totalSupply: 21000000, maxSupply: 21000000
    )
    
    static let mockArray: [Self] = [
        .init(id: "bit2", symbol: "btc", name: "bit2", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", currentPrice: 21747, marketCap: 419320825566, marketCapRank: 1, totalVolume: 50153133497, high24H: 22615, low24H: 21596, priceChange24H: -868.336685288763, priceChangePercentage24H: -3.83958, marketCapChange24H: -15645722770.546387, marketCapChangePercentage24H: -3.59699, circulatingSupply: 19286950, totalSupply: 21000000, maxSupply: 21000000),
        .init(id: "bit3", symbol: "btc", name: "bit3", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", currentPrice: 21747, marketCap: 419320825566, marketCapRank: 2, totalVolume: 50153133497, high24H: 22615, low24H: 21596, priceChange24H: -868.336685288763, priceChangePercentage24H: -3.83958, marketCapChange24H: -15645722770.546387, marketCapChangePercentage24H: -3.59699, circulatingSupply: 19286950, totalSupply: 21000000, maxSupply: 21000000),
        .init(id: "bit4", symbol: "btc", name: "bit4", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", currentPrice: 21747, marketCap: 419320825566, marketCapRank: 3, totalVolume: 50153133497, high24H: 22615, low24H: 21596, priceChange24H: -868.336685288763, priceChangePercentage24H: -3.83958, marketCapChange24H: -15645722770.546387, marketCapChangePercentage24H: -3.59699, circulatingSupply: 19286950, totalSupply: 21000000, maxSupply: 21000000)
    ]
}
