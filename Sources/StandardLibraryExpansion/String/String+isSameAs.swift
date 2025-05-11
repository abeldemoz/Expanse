//
//  String+isSameAs.swift
//  Expanse
//
//  Created by Abel Demoz on 11/05/2025.
//

public extension String {
    func isSameAs(_ otherString: String) -> Bool {
        trimmed.compare(otherString.trimmed, options: [.caseInsensitive, .diacriticInsensitive]) == .orderedSame
    }
}
