//
//  Atomic.swift
//  SwiftFoundation
//
//  Created by hengyu on 2020/2/3.
//  Copyright © 2020 hengyu. All rights reserved.
//

import Foundation

public final class Atomic<A> {
    private let queue = DispatchQueue(label: "Atomic serial queue")
    private var _value: A

    public init(_ value: A) {
        self._value = value
    }

    public var value: A {
        queue.sync { self._value }
    }

    public func mutate(_ transform: (inout A) -> Void) {
        queue.sync {
            transform(&self._value)
        }
    }
}
