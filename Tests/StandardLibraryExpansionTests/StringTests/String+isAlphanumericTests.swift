//
// String+isAlphanumericTests.swift
//
//
// Created by Abel Demoz on 19/06/2023.
//

import XCTest
@testable import StandardLibraryExpansion

final class StringIsAlphanumericTests: XCTestCase {

    private var testString: String!

    override func tearDown() {
        testString = nil
        super.tearDown()
    }

    func testIsAlphanumeric_returnsTrue_whenInputContainsOnlyLetters() throws {
        testString = "abc"
        XCTAssertEqual(testString.isAlphanumeric, true)
    }

    func testIsAlphanumeric_returnsTrue_whenInputContainsOnlyNumbers() throws {
        testString = "123"
        XCTAssertEqual(testString.isAlphanumeric, true)
    }

    func testIsAlphanumeric_returnsTrue_whenInputContainsLettersAndNumbers() throws {
        testString = "abc123"
        XCTAssertEqual(testString.isAlphanumeric, true)
    }

    func testIsAlphanumeric_returnsFalse_whenInputContainsSpecialCharacters() throws {
        testString = "abc123+$%^"
        XCTAssertEqual(testString.isAlphanumeric, false)
    }

    func testIsAlphanumeric_returnsFalse_whenInputIsEmpty() throws {
        testString = ""
        XCTAssertEqual(testString.isAlphanumeric, false)
    }

    func testIsAlphanumeric_returnsFalse_whenInputContainsOnlySpecialCharacters() throws {
        testString = "+$%^"
        XCTAssertEqual(testString.isAlphanumeric, false)
    }
}
