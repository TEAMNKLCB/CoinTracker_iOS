//
//  Dropdown.swift
//  CleanCrypto
//
//  Created by kai on 4/16/24.
//

import SwiftUI

struct Dropdown: View {
    var options: [Coin]
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 15) {
                ForEach(options) { option in
                    HStack {
                        Image("bitcoin")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Text(option.name)
                            .foregroundStyle(.black)
                            .font(.subheadline)
                        
                        Spacer()
                        
                        Text(option.marketCapRank != nil ? "#\(option.marketCapRank!)" : "")
                            .foregroundStyle(.black)
                            .font(.subheadline)
                    }
                }
            }
            .padding(16)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .background(.white)
        .cornerRadius(5)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.gray, lineWidth: 1)
        )
        .offset(y: Constant.searchBarHeight + 10)
    }
}

#Preview {
    Dropdown(options: Coin.mockArray)
}
