//
// Sequence+sortedTests.swift
//
//
// Created by Abel Demoz on 22/06/2023.
//

import XCTest
@testable import StandardLibraryExpansion

final class SequenceSortedTests: XCTestCase {

    private struct TestHelper: Equatable {
        let property: Int

        static func == (lhs: Self, rhs: Self) -> Bool {
            lhs.property == rhs.property
        }
    }

    private let sequence = [1, 3, 5, 2, 4].map { TestHelper(property: $0) }

    func testSorted_ascendingOrder() {
        let expectedSequence = [1, 2, 3, 4, 5].map { TestHelper(property: $0) }
        let sortedSequence = sequence.sorted(by: \.property, sortingOrder: .ascending)

        XCTAssertEqual(sortedSequence, expectedSequence)
    }

    func testSorted_descendingOrder() {
        let expectedSequence = [5, 4, 3, 2, 1].map { TestHelper(property: $0) }
        let sortedSequence = sequence.sorted(by: \.property, sortingOrder: .descending)

        XCTAssertEqual(sortedSequence, expectedSequence)
    }
}
