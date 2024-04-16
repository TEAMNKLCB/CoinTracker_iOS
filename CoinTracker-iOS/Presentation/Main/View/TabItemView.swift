//
//  TabItemView.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/16/24.
//

import SwiftUI

enum CategoryTab: CaseIterable {
    case coins, whishlists
    
    var title: String {
        switch self {
        case .coins:
            "Coins"
        case .whishlists:
            "Whishlists"
        }
    }
}

struct TabItemView: View {
    @Binding var selectedTab: CategoryTab
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(CategoryTab.allCases, id: \.self) { item in
                Text(item.title)
                    .font(.headline)
                    .foregroundColor(item == selectedTab ? .white : Color.white.opacity(0.5))
                    .onTapGesture {
                        withAnimation {
                            selectedTab = item
                        }
                    }
            }
            
            Spacer()
        }
    }
}

#Preview {
    TabItemView(selectedTab: .constant(.coins))
}
