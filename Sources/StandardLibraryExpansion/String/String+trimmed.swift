//
//  String+trimmed.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

import Foundation

public extension String {
    var trimmed: String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
