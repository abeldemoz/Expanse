//
//  String+containsOnlyWhitespaceTests.swift
//  
//
//  Created by Abel Demoz on 09/07/2023.
//

import XCTest

final class StringContainsOnlyWhitespaceTests: XCTestCase {

    func test_containsOnlyWhitespace_whenStringContainsOnlyWhitespace_returnsTrue() {
        let string = "   "
        XCTAssertTrue(string.containsOnlyWhitespace)
    }

    func test_containsOnlyWhitespace_whenStringIsEmpty_returnsFalse() {
        let string = ""
        XCTAssertFalse(string.containsOnlyWhitespace)
    }
}
