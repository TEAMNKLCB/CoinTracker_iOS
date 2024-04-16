//
//  DIContainer.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/13/24.
//

import Foundation

protocol DIContainerProtocol {
    func register<Service>(type: Service.Type, component: () -> Service)
    func inject<Service>(type: Service.Type) -> Service
}

final class DIContainer: DIContainerProtocol {
    static let shared = DIContainer()
    private init() {}
    
    var services: [String: Any] = [:]
    
    /// ex. register(type: SomeRepositoryProtocol.self) { SomeRepository() }
    func register<Service>(type: Service.Type, component service: () -> Service) {
        services["\(type)"] = service()
    }
    
    func inject<Service>(type: Service.Type) -> Service {
        guard let injectedService = services["\(type)"] as? Service else {
            print("register 되지 않은 서비스입니다.")
            fatalError()
        }
        
        return injectedService
    }
}
