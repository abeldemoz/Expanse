//
//  File.swift
//  
//
//  Created by Abel Demoz on 19/06/2023.
//

#if canImport(Combine)

import Combine

public extension Publisher {
  func generalizeError() -> AnyPublisher<Self.Output, Error> {
    return self
      .mapError({ (error: Self.Failure) -> Error in
        return error
      }).eraseToAnyPublisher()
  }
}

#endif

