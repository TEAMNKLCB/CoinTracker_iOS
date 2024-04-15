//
//  MainView.swift
//  CleanCrypto
//
//  Created by kai on 4/13/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel: MainViewModel = MainViewModel()
    
    @FocusState private var isSearchBarFocused: Bool
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            Color.darkGray
                .ignoresSafeArea()
            
            VStack {
                SearchBar(text: $searchText)
                    .focused($isSearchBarFocused)
                    .overlay(alignment: .top) {
                        Dropdown(options: Coin.mockArray)
                            .hide(!isSearchBarFocused)
                            .animation(.spring(), value: isSearchBarFocused)
                    }
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .onTapGesture {
            searchText = ""
            isSearchBarFocused = false
        }
    }
}

#Preview {
    MainView()
}
