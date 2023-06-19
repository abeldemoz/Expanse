//
//  String+isAlphaNumeric.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

import Foundation

public extension String {
    var isAlphanumeric: Bool {
        !isEmpty && range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil
    }
}
