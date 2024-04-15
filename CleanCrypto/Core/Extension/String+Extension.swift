//
//  String+Extension.swift
//  CleanCrypto
//
//  Created by kai on 4/16/24.
//

import Foundation

extension String {
    func trimmingString() -> String {
        trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
