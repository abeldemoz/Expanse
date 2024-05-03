//
// String+trimTests.swift
//
//
// Created by Abel Demoz on 22/06/2023.
//

import XCTest
@testable import StandardLibraryExpansion

final class StringTrimTests: XCTestCase {

    private var testString: String!

    override func tearDown() {
        testString = nil
        super.tearDown()
    }

    func testTrim_removesLeadingAndTrailingWhiteSpace() throws {
        testString = " abcd "
        XCTAssertEqual("abcd", testString.trim())
    }

    func testTrim_removesLeadingWhiteSpace() throws {
        testString = " abcd"
        XCTAssertEqual("abcd", testString.trim())
    }

    func testTrim_removesTrailingWhiteSpace() throws {
        testString = "abcd "
        XCTAssertEqual("abcd", testString.trim())
    }

    func testTrim_removesAllWhiteSpace() throws {
        testString = "     "
        XCTAssertEqual("", testString.trim())
    }

    func testTrim_removesLeadingAndTrailingNewLines() throws {
        testString = "\nabcdefg\n"
        XCTAssertEqual("abcdefg", testString.trim())
    }

    func testTrim_removesLeadingNewLines() throws {
        testString = "\nabcdefg"
        XCTAssertEqual("abcdefg", testString.trim())
    }

    func testTrim_removesTrailingNewLines() throws {
        testString = "abcdefg\n"
        XCTAssertEqual("abcdefg", testString.trim())
    }

    func testTrim_removesAllNewLines() {
        testString = "\n\n\n\n"
        XCTAssertEqual("", testString.trim())
    }

    func testTrim_removesNothing_whenInputIsEmpty() {
        testString = ""
        XCTAssertEqual("", testString.trim())
    }
}
