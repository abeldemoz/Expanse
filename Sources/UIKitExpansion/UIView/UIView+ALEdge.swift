//
// UIView+ALEdge.swift
//
//
// Created by Abel Demoz on 19/06/2023.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension UIView {
    enum ALEdge {
        case top
        case leading
        case bottom
        case trailing
    }
}

#endif
