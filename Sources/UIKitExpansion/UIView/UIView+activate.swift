//
// UIView+activate.swift
//
//
// Created by Abel Demoz on 19/06/2023.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

extension UIView {
    func activate(constraints: [NSLayoutConstraint], priority: UILayoutPriority) {
        translatesAutoresizingMaskIntoConstraints = false
        constraints.forEach { $0.priority = priority }
        NSLayoutConstraint.activate(constraints)
    }
}
#endif
