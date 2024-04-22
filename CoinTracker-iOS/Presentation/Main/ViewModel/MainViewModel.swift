//
//  MainViewModel.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/13/24.
//

import SwiftUI
import Combine

final class MainViewModel: BaseViewModel {
    let navigateSubject = PassthroughSubject<MainCoordinator.Routes, Never>()
}

extension MainViewModel {
    func didTapPriceCoinRow(coin: PriceCoin) {
        navigateSubject.send(.price(coin: coin))
    }
}
