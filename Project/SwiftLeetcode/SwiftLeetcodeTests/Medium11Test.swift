//
//  Medium11Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/4/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium11Test: XCTestCase {
    func testMaxArea() {
        var input: [Int]
        var expected: Int
        
        input = [1, 1]
        expected = 1
        XCTAssertEqual(expected, Medium11.maxArea(input))
        
        input = [1, 2, 3, 5]
        expected = 4
        XCTAssertEqual(expected, Medium11.maxArea(input))
    }
}
