//
// Publisher+asyncTryMap.swift
//
//
// Created by Abel Demoz on 19/06/2023.
//

#if canImport(Combine)
import Combine

public extension Publisher {
    func asyncTryMap<T>(
        _ transform: @escaping (Output) async throws -> T
    ) -> Publishers.FlatMap<Future<T, Error>, Self> {
        flatMap { value in
            Future { promise in
                Task {
                    do {
                        let output = try await transform(value)
                        promise(.success(output))
                    } catch {
                        promise(.failure(error))
                    }
                }
            }
        }
    }
}

#endif
