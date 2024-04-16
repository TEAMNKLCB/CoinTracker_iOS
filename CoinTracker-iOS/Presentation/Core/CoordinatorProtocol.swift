//
//  CoordinatorProtocol.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/14/24.
//

import SwiftUI

protocol DestinationProtocol: Equatable {
    associatedtype Destination: View
    var content: Destination { get }
}

protocol CoordinatorProtocol: View {
    associatedtype Destination: DestinationProtocol
    var activeRoute: Destination? { get }
}
