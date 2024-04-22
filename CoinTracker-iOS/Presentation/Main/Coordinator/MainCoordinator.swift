//
//  MainCoordinator.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/22/24.
//

import SwiftUI
import Combine

struct MainCoordinator: CoordinatorProtocol {
    @StateObject var viewModel: MainViewModel = MainViewModel()
    
    @State var activeRoute: Destination?
    @State private var cacellables = Set<AnyCancellable>()
    
    var body: some View {
        MainView(viewModel: viewModel)
            .route(to: $activeRoute)
            .onAppear {
                viewModel.navigateSubject
                    .sink { route in
                        activeRoute = Destination(route: route)
                    }
                    .store(in: &cacellables)
            }
    }
}

extension MainCoordinator {
    enum Routes: Equatable {
        case ranking(id: String)
        case price(coin: PriceCoin)
    }
    
    struct Destination: DestinationProtocol {
        var route: Routes
        
        @ViewBuilder
        var content: some View {
            switch route {
            case .ranking(let id):
                RankingDetailView(id: id)
            case .price(let coin):
                PriceDetailView(coin: coin)
            }
        }
    }
}

#Preview {
    MainCoordinator()
}
