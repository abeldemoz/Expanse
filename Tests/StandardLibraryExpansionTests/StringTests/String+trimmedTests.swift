//
// String+trimmedTests.swift
//
//
// Created by Abel Demoz on 22/06/2023.
//

import XCTest
@testable import StandardLibraryExpansion

final class StringTrimmedTests: XCTestCase {

    private var testString: String!

    override func tearDown() {
        testString = nil
        super.tearDown()
    }

    func testTrimmed_removesLeadingAndTrailingWhiteSpace() throws {
        testString = " abcd "
        XCTAssertEqual("abcd", testString.trimmed)
    }

    func testTrimmed_removesLeadingWhiteSpace() throws {
        testString = " abcd"
        XCTAssertEqual("abcd", testString.trimmed)
    }

    func testTrimmed_removesTrailingWhiteSpace() throws {
        testString = "abcd "
        XCTAssertEqual("abcd", testString.trimmed)
    }

    func testTrimmed_removesAllWhiteSpace() throws {
        testString = "     "
        XCTAssertEqual("", testString.trimmed)
    }

    func testTrimmed_removesLeadingAndTrailingNewLines() throws {
        testString = "\nabcdefg\n"
        XCTAssertEqual("abcdefg", testString.trimmed)
    }

    func testTrimmed_removesLeadingNewLines() throws {
        let testString = "\nabcdefg"
        XCTAssertEqual("abcdefg", testString.trimmed)
    }

    func testTrimmed_removesTrailingNewLines() throws {
        testString = "abcdefg\n"
        XCTAssertEqual("abcdefg", testString.trimmed)
    }

    func testTrimmed_removesAllNewLines() {
        testString = "\n\n\n\n"
        XCTAssertEqual("", testString.trimmed)
    }

    func testTrimmed_removesNothing_whenInputIsEmpty() {
        testString = ""
        XCTAssertEqual("", testString.trimmed)
    }
}
