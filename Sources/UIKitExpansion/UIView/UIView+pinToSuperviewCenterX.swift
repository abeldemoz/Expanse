//
//  UIView+pinToSuperviewCenterX.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension UIView {
    func pinToSuperviewCenterX(offset: CGFloat = 0) {
        guard let superview = superview else {
            return
        }

        centerXAnchor.constraint(equalTo: superview.centerXAnchor, constant: offset).isActive = true
    }
}
#endif
