//
//  String+trim.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

import Foundation

public extension String {
    mutating func trim() -> Self {
        self = self.trimmed
        return self
    }
}
