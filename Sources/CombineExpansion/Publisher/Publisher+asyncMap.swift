//
// Publisher+asyncMap.swift
//
//
// Created by Abel Demoz on 19/06/2023.
//

#if canImport(Combine)

import Combine

public extension Publisher {
    func asyncMap<T>(
        _ transform: @escaping (Output) async -> T
    ) -> Publishers.FlatMap<Future<T, Error>, Self> {
        flatMap { value in
            Future { promise in
                Task {
                    let output = await transform(value)
                    promise(.success(output))
                }
            }
        }
    }
}

#endif
