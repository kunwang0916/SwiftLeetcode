//
//  NestedInteger.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/16/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

class NestedInteger {
    var list: [NestedInteger]?
    var integer: Int?
    
    public init(_ list: [NestedInteger]) {
        self.list = list
    }
    
    public init(_ integer: Int) {
        self.integer = integer
    }
    
    public init() {
        self.list = [NestedInteger]()
    }
    
    public func isInteger() -> Bool {
        return self.integer != nil
    }
    
    public func getInteger() -> Int {
        return self.integer!
    }
    
    public func setInteger(value: Int) {
        self.integer = value
    }
    
    public func add(elem: NestedInteger) {
        if list != nil {
            self.list?.append(elem)
        } else {
            self.list = [NestedInteger]()
            self.list?.append(elem)
        }
    }
    
    public func getList() -> [NestedInteger] {
        return self.list!
    }
}

