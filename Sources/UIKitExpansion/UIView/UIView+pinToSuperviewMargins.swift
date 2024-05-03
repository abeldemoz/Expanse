//
// UIView+pinToSuperviewMargins.swift
//
//
// Created by Abel Demoz on 19/06/2023.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension UIView {
    func pinToSuperviewMargins(excludingEdges edges: [ALEdge] = [], priority: UILayoutPriority = .required) {
        guard let margins = superview?.layoutMarginsGuide else {
            return
        }

        var constraints = [NSLayoutConstraint]()

        if !edges.contains(.top) {
            constraints.append(topAnchor.constraint(equalTo: margins.topAnchor))
        }

        if !edges.contains(.leading) {
            constraints.append(leadingAnchor.constraint(equalTo: margins.leadingAnchor))
        }

        if !edges.contains(.bottom) {
            constraints.append(bottomAnchor.constraint(equalTo: margins.bottomAnchor))
        }

        if !edges.contains(.trailing) {
            constraints.append(trailingAnchor.constraint(equalTo: margins.trailingAnchor))
        }

        activate(constraints: constraints, priority: priority)
    }
}
#endif
