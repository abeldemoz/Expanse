//
//  String+containsOnlyWhitespace.swift
//  
//
//  Created by Abel Demoz on 09/07/2023.
//

public extension String {
    var containsOnlyWhitespace: Bool {
        self.isNotEmpty && self.trimmed.isEmpty
    }
}
