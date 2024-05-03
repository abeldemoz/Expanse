//
// UIView+pinToSuperviewSafeArea.swift
//
//
// Created by Abel Demoz on 19/06/2023.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension UIView {
    func pinToSuperviewSafeArea(excludingEdges edges: [ALEdge] = [], priority: UILayoutPriority = .required) {
        guard let superview = superview else {
            return
        }

        var constraints = [NSLayoutConstraint]()
        if !edges.contains(.top) {
            constraints.append(topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor))
        }

        if !edges.contains(.leading) {
            constraints.append(leadingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leadingAnchor))
        }

        if !edges.contains(.bottom) {
            constraints.append(bottomAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.bottomAnchor))
        }

        if !edges.contains(.trailing) {
            constraints.append(trailingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.trailingAnchor))
        }

        activate(constraints: constraints, priority: priority)
    }
}
#endif
