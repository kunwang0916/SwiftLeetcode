//
//  Easy26Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/25/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Easy26Test: XCTestCase {
    func test() {
        var length = 0
        var nums = [1, 1, 2]
        var expectLength = 2
        length = Easy26.removeDuplicates(&nums)
        XCTAssertEqual(expectLength, length)
        
        nums = [1, 1, 2, 3, 3, 4, 4, 4]
        expectLength = 4
        length = Easy26.removeDuplicates(&nums)
        XCTAssertEqual(expectLength, length)
    }
}
