//
//  Sequence+sorted.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

public enum SortingOrder {
    case ascending
    case descending
}

public extension Sequence {
    func sorted<T: Comparable>(
        by keyPath: KeyPath<Element, T>,
        sortingOrder: SortingOrder = .ascending
    ) -> [Element] {
        sorted { lhs, rhs in
            switch sortingOrder {
            case .ascending:
                return lhs[keyPath: keyPath] < rhs[keyPath: keyPath]
            case .descending:
                return lhs[keyPath: keyPath] > rhs[keyPath: keyPath]
            }

        }
    }
}

