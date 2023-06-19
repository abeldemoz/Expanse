//
//  StringTests.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

import XCTest
@testable import StandardLibraryExpansion

final class StringExtensionsTests: XCTestCase {

    private var testString: String!

    // MARK: - Test isAlphanumeric
    func test_isAlphanumeric_returnsTrue_whenInputContainsOnlyLetters() throws {
        testString = "abc"
        XCTAssertEqual(testString.isAlphanumeric, true)
    }

    func test_isAlphanumeric_returnsTrue_whenInputContainsOnlyNumbers() throws {
        testString = "123"
        XCTAssertEqual(testString.isAlphanumeric, true)
    }

    func test_isAlphanumeric_returnsTrue_whenInputContainsLettersAndNumbers() throws {
        testString = "abc123"
        XCTAssertEqual(testString.isAlphanumeric, true)
    }

    func test_isAlphanumeric_returnsFalse_whenInputContainsSpecialCharacters() throws {
        testString = "abc123+$%^"
        XCTAssertEqual(testString.isAlphanumeric, false)
    }

    func test_isAlphanumeric_returnsFalse_whenInputIsEmpty() throws {
        testString = ""
        XCTAssertEqual(testString.isAlphanumeric, false)
    }

    func test_isAlphanumeric_returnsFalse_whenInputContainsOnlySpecialCharacters() throws {
        testString = "+$%^"
        XCTAssertEqual(testString.isAlphanumeric, false)
    }

    // MARK: - Test containsOnlyDigits
    func test_containsOnlyDigits_returnsTrue_whenInputContainsOnlyDigits() throws {
        testString = "123"
        XCTAssertEqual(testString.containsOnlyDigits, true)
    }

    func test_containsOnlyDigits_returnsFalse_whenInputContainsOnlyLetters() throws {
        testString = "abc"
        XCTAssertEqual(testString.containsOnlyDigits, false)
    }

    func test_containsOnlyDigits_returnsFalse_whenInputIsEmpty() throws {
        testString = ""
        XCTAssertEqual(testString.containsOnlyDigits, false)
    }

    // MARK: - Test trim
    func test_trim_removesLeadingAndTrailingWhiteSpace() throws {
        testString = " abcd "
        XCTAssertEqual("abcd", testString.trim())
    }

    func test_trim_removesLeadingWhiteSpace() throws {
        testString = " abcd"
        XCTAssertEqual("abcd", testString.trim())
    }

    func test_trim_removesTrailingWhiteSpace() throws {
        testString = "abcd "
        XCTAssertEqual("abcd", testString.trim())
    }

    func test_trim_removesAllWhiteSpace() throws {
        testString = "     "
        XCTAssertEqual("", testString.trim())
    }

    func test_trim_removesLeadingAndTrailingNewLines() throws {
        testString = "\nabcdefg\n"
        XCTAssertEqual("abcdefg", testString.trim())
    }

    func test_trim_removesLeadingNewLines() throws {
        testString = "\nabcdefg"
        XCTAssertEqual("abcdefg", testString.trim())
    }

    func test_trim_removesTrailingNewLines() throws {
        testString = "abcdefg\n"
        XCTAssertEqual("abcdefg", testString.trim())
    }

    func test_trim_removesAllNewLines() {
        testString = "\n\n\n\n"
        XCTAssertEqual("", testString.trim())
    }

    func test_trim_removesNothing_whenInputIsEmpty() {
        testString = ""
        XCTAssertEqual("", testString.trim())
    }

    // MARK: - Test trimmed
    func test_trimmed_removesLeadingAndTrailingWhiteSpace() throws {
        testString = " abcd "
        XCTAssertEqual("abcd", testString.trimmed)
    }

    func test_trimmed_removesLeadingWhiteSpace() throws {
        testString = " abcd"
        XCTAssertEqual("abcd", testString.trimmed)
    }

    func test_trimmed_removesTrailingWhiteSpace() throws {
        testString = "abcd "
        XCTAssertEqual("abcd", testString.trimmed)
    }

    func test_trimmed_removesAllWhiteSpace() throws {
        testString = "     "
        XCTAssertEqual("", testString.trimmed)
    }

    func test_trimmed_removesLeadingAndTrailingNewLines() throws {
        testString = "\nabcdefg\n"
        XCTAssertEqual("abcdefg", testString.trimmed)
    }

    func test_trimmed_removesLeadingNewLines() throws {
        let testString = "\nabcdefg"
        XCTAssertEqual("abcdefg", testString.trimmed)
    }

    func test_trimmed_removesTrailingNewLines() throws {
        testString = "abcdefg\n"
        XCTAssertEqual("abcdefg", testString.trimmed)
    }

    func test_trimmed_removesAllNewLines() {
        testString = "\n\n\n\n"
        XCTAssertEqual("", testString.trimmed)
    }

    func test_trimmed_removesNothing_whenInputIsEmpty() {
        testString = ""
        XCTAssertEqual("", testString.trimmed)
    }
}


