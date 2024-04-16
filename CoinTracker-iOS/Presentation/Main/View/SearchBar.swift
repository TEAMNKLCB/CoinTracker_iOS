//
//  SearchBar.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/15/24.
//

import SwiftUI

struct SearchBar: View {
    @FocusState private var isFocused: Bool
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("", text: $text)
                .placeHolder(
                    Text("Search coins")
                        .font(.headline)
                        .foregroundColor(.white.opacity(0.3)),
                    show: text.isEmpty
                )
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .focused($isFocused)
                .background(Color.clear)
                .foregroundColor(.white)
                .font(.headline)
            
            Button {
                text = ""
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.white)
                    .frame(width: 35, height: 35)
            }
            .hide(text.isEmpty || !isFocused)
        }
        .frame(height: Constant.searchBarHeight)
    }
}
