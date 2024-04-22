//
//  CoordinatorProtocol.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/14/24.
//

import SwiftUI

protocol DestinationProtocol: Equatable {
    associatedtype Routes: Equatable
    associatedtype Destination: View
    var route: Routes { get }
    var content: Destination { get }
}

protocol CoordinatorProtocol: View {
    associatedtype Destination: DestinationProtocol
    var activeRoute: Destination? { get }
}
