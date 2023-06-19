//
//  NSLayoutConstraint+activate.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension NSLayoutConstraint {
    @discardableResult
    func activate() -> Self {
        isActive = true
        return self
    }
}
#endif
