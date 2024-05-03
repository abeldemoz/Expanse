//
// Bool+isNotTrueTests.swift
//
//
// Created by Abel Demoz on 01/09/2023.
//

import XCTest

final class BoolIsNotTrueTests: XCTestCase {

    func test_isNotTrue_returnsCorrectValue() {
        let falseValue = false
        XCTAssertTrue(falseValue.isNotTrue)
    }
}
