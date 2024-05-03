//
//  File.swift
//  
//
//  Created by Abel Demoz on 04/05/2024.
//

import SwiftUI

private struct ConditionalHideModifier: ViewModifier {
    var isHidden: Bool

    func body(content: Content) -> some View {
        if isHidden {
            content.hidden()
        } else {
            content
        }
    }
}

extension View {
    public func hide(_ shouldHide: Bool) -> some View {
        self.modifier(ConditionalHideModifier(isHidden: shouldHide))
    }
}
