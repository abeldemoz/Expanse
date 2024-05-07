//
//  File.swift
//  
//
//  Created by Abel Demoz on 06/05/2024.
//

import XCTest

final class OptionalTests: XCTestCase {

    func test_isNil() {
        var sut: Int? = nil

        XCTAssertTrue(sut.isNil)

        sut = 1

        XCTAssertFalse(sut.isNil)
    }

}
