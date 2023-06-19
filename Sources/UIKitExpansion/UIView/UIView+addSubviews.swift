//
//  UIView+addSubviews.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { view in
            addSubview(view)
        }
    }
}
#endif
