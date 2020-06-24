//
//  Weak.swift
//  SwiftFoundation
//
//  Created by hengyu on 2020/2/3.
//  Copyright © 2020 hengyu. All rights reserved.
//

import Foundation

public final class Weak<T> {
    private weak var _object: AnyObject?

    public init(_ object: T) {
        _object = object as AnyObject
    }

    public var value: T? {
        _object as? T
    }
}
