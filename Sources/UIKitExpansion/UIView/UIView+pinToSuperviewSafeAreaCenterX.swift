//
// UIView+pinToSuperviewSafeAreaCenterX.swift
//
//
// Created by Abel Demoz on 19/06/2023.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension UIView {
    func pinToSuperviewSafeAreaCenterX(priority: UILayoutPriority = .required) {
        guard let superview = superview else {
            return
        }

        activate(constraints: [centerXAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.centerXAnchor)], priority: priority)
    }
}
#endif
