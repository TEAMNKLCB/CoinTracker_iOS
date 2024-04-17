//
//  Double+Extension.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/18/24.
//

import Foundation

extension Double {
    /// Returns a currency formatted string based on the device's locale.
    var formattedAsCurrency: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current  // Use the current locale of the device
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
