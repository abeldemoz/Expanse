//
//  Collection+isNotEmptyTests.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

import XCTest
@testable import StandardLibraryExpansion

final class CollectionIsNotEmptyTests: XCTestCase {

    func testIsNotEmpty_returnsTrue_whenCollectionContainsElements() {
        let collection1: Array<Int> = [1]
        let collection2: Set<Int> = [1]
        let collection3: Dictionary<Int, Int> = [1: 1]
        let collection4: String = "1"

        XCTAssert(collection1.isNotEmpty)
        XCTAssert(collection2.isNotEmpty)
        XCTAssert(collection3.isNotEmpty)
        XCTAssert(collection4.isNotEmpty)
    }

    func testIsNotEmpty_returnsFalse_whenCollectionContainsZeroElements() {
        let collection1 = Array<Int>()
        let collection2 = Set<Int>()
        let collection3 = Dictionary<Int, Int>()
        let collection4 = String()

        XCTAssertFalse(collection1.isNotEmpty)
        XCTAssertFalse(collection2.isNotEmpty)
        XCTAssertFalse(collection3.isNotEmpty)
        XCTAssertFalse(collection4.isNotEmpty)
    }

}

