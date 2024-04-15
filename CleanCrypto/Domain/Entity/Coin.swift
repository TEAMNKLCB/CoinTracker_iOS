//
//  SearchMarket.swift
//  CleanCrypto
//
//  Created by kai on 4/16/24.
//

import Foundation

struct Coin: Decodable, Identifiable {
    let id, name, apiSymbol, symbol: String
    let marketCapRank: Int?
    let large: String
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case apiSymbol = "api_symbol"
        case symbol
        case marketCapRank = "market_cap_rank"
        case large
    }
}

extension Coin {
    var imageURL: URL? {
        let safeURL = large.trimmingString()
        return URL(string: safeURL)
    }
}

extension Coin {
    static let mock = Coin(
        id: "zcoin",
        name: "Firo",
        apiSymbol: "zcoin",
        symbol: "FIRO",
        marketCapRank: 596,
        large: "https://assets.coingecko.com/coins/images/479/large/firocoingecko.png"
    )
    
    static let mockArray: [Coin] = [
        .init(id: "zcoin",
              name: "Firo",
              apiSymbol: "zcoin",
              symbol: "FIRO",
              marketCapRank: 596,
              large: "https://assets.coingecko.com/coins/images/479/large/firocoingecko.png"),
        .init(id: "zcoin2",
              name: "Firo2",
              apiSymbol: "zcoin2",
              symbol: "FIRO2",
              marketCapRank: nil,
              large: "https://assets.coingecko.com/coins/images/479/large/firocoingecko.png")
    ]
}
