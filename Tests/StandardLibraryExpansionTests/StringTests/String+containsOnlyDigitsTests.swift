//
// String+containsOnlyDigitsTests.swift
//
//
// Created by Abel Demoz on 22/06/2023.
//

import XCTest
@testable import StandardLibraryExpansion

final class StringContainsOnlyDigitsTests: XCTestCase {

    private var testString: String!

    override func tearDown() {
        testString = nil
        super.tearDown()
    }

    func testContainsOnlyDigits_returnsTrue_whenInputContainsOnlyDigits() throws {
        testString = "123"
        XCTAssertEqual(testString.containsOnlyDigits, true)
    }

    func testContainsOnlyDigits_returnsFalse_whenInputContainsOnlyLetters() throws {
        testString = "abc"
        XCTAssertEqual(testString.containsOnlyDigits, false)
    }

    func testContainsOnlyDigits_returnsFalse_whenInputIsEmpty() throws {
        testString = ""
        XCTAssertEqual(testString.containsOnlyDigits, false)
    }
}
