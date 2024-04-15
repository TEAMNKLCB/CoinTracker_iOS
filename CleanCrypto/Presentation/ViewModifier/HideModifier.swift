//
//  HideModifier.swift
//  CleanCrypto
//
//  Created by kai on 4/15/24.
//

import SwiftUI

struct Hide: ViewModifier {
    let isViewHidden: Bool
    
    func body(content: Content) -> some View {
        if isViewHidden {
            EmptyView()
        } else {
            content
        }
    }
}

extension View {
    func hide(_ bool: Bool) -> some View {
        self.modifier(Hide(isViewHidden: bool))
    }
}
