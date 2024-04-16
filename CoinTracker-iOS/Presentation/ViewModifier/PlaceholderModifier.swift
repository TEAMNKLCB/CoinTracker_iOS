//
//  PlaceholderModifier.swift
//  CoinTracker-iOS
//
//  Created by kai on 4/15/24.
//

import SwiftUI

struct PlaceHolder<V: View>: ViewModifier {
    var placeHolder: V
    var show: Bool
    
    func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if show { placeHolder }
            content
        }
    }
}

extension TextField {
    func placeHolder<V: View>(_ holder: V, show: Bool) -> some View {
        self.modifier(PlaceHolder(placeHolder: holder, show: show))
    }
}
