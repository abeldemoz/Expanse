//
//  UIView+pinToSuperviewSafeAreaCenterY.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension UIView {
    func pinToSuperviewSafeAreaCenterY(priority: UILayoutPriority = .required) {
        guard let superview = superview else {
            return
        }

        activate(constraints: [centerYAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.centerYAnchor)], priority: priority)
    }
}
#endif
