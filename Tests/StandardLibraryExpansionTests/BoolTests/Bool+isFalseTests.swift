//
// Bool+isFalseTests.swift
//
//
// Created by Abel Demoz on 01/09/2023.
//

import XCTest

final class BoolIsFalseTests: XCTestCase {

    func test_isFalse_returnsCorrectValue() {
        let falseValue = false
        XCTAssertTrue(falseValue.isFalse)
    }
}
