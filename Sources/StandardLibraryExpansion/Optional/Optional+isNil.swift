//
//  File.swift
//  
//
//  Created by Abel Demoz on 06/05/2024.
//

public extension Optional {
    var isNil: Bool {
        switch self {
        case .none:
            return true
        case .some:
            return false
        }
    }
}
