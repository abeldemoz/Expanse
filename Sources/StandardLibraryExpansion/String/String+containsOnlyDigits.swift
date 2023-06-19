//
//  String+containsOnlyDigits.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

import Foundation

public extension String {
    var containsOnlyDigits: Bool {
        let notDigits = NSCharacterSet.decimalDigits.inverted
        return !isEmpty && rangeOfCharacter(from: notDigits, options: String.CompareOptions.literal, range: nil) == nil
    }
}
