//
//  MainView.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/13/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel: MainViewModel = MainViewModel()
    
    @FocusState private var isSearchBarFocused: Bool
    @State private var searchText = ""
    @State private var selectedTab: CategoryTab = .coins
    
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
                
                sortButton
                
                TabItemView(selectedTab: $selectedTab)
                    .padding(.top, 20)
                
                TabView(selection: $selectedTab) {
                    Text(CategoryTab.coins.title)
                        .tag(CategoryTab.coins)
                    
                    Text(CategoryTab.whishlists.title)
                        .tag(CategoryTab.whishlists)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
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

extension MainView {
    private var sortButton: some View {
        HStack {
            Button {
                // action
            } label: {
                Rectangle()
                    .frame(width: 140.0, height: 30.0)
                    .foregroundColor(Color.white.opacity(0.1))
                    .cornerRadius(5.0)
                    .overlay {
                        Text("Market Cap Rank")
                            .foregroundColor(Color.white)
                            .font(.subheadline)
                    }
            }
            Spacer()
        }
    }
}

#Preview {
    MainView()
}
