//
//  File.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension UIView {
    func pinToSuperviewEdges(excludingEdges edges: [ALEdge] = [], priority: UILayoutPriority = .required) {
        guard let superview = superview else {
            return
        }

        var constraints = [NSLayoutConstraint]()
        if !edges.contains(.top) {
            constraints.append(topAnchor.constraint(equalTo: superview.topAnchor))
        }

        if !edges.contains(.leading) {
            constraints.append(leadingAnchor.constraint(equalTo: superview.leadingAnchor))
        }

        if !edges.contains(.bottom) {
            constraints.append(bottomAnchor.constraint(equalTo: superview.bottomAnchor))
        }

        if !edges.contains(.trailing) {
            constraints.append(trailingAnchor.constraint(equalTo: superview.trailingAnchor))
        }

        activate(constraints: constraints, priority: priority)
    }
}
#endif
