//
//  UIView+pinToSuperviewCenterY.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension UIView {
    func pinToSuperviewCenterY(offset: CGFloat = 0) {
        guard let superview = superview else {
            return
        }

        centerYAnchor.constraint(equalTo: superview.centerYAnchor, constant: offset).isActive = true
    }
}
#endif
