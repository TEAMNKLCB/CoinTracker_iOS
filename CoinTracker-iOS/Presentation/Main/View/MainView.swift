//
//  MainView.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/13/24.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel: MainViewModel
    @FocusState private var isSearchBarFocused: Bool
    @State private var searchText = ""
    @State private var selectedTab: CategoryTab = .coins
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.darkGray
                    .ignoresSafeArea()
                
                VStack {
                    SearchBar(text: $searchText)
                        .focused($isSearchBarFocused)
                        .overlay(alignment: .top) {
                            Dropdown(options: RankingCoin.mockArray)
                                .hide(!isSearchBarFocused)
                                .animation(.spring(), value: isSearchBarFocused)
                        }
                        .zIndex(4)
                    
                    sortButton
                    
                    TabItemView(selectedTab: $selectedTab)
                        .padding(.top, 20)
                    
                    TabView(selection: $selectedTab) {
                        coinsList
                            .tag(CategoryTab.coins)
                        
                        whishlist
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
            .navigationTitle("Coin Tracker")
            .navigationBarTitleDisplayMode(.inline)
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
    
    private var coinsList: some View {
        ScrollView {
            LazyVStack(spacing: 15) {
                ForEach(0..<20) { _ in
                    CoinRow(coin: PriceCoin.mock)
                        .onTapGesture {
                            viewModel.didTapPriceCoinRow(coin: .mock)
                        }
                }
                
                Color.clear
                    .onAppear {
                        print("more!")
                    }
            }
            .padding(.top)
        }
    }
    
    private var whishlist: some View {
        Text(CategoryTab.whishlists.title)
    }
}

#Preview {
    MainView(viewModel: MainViewModel())
}
