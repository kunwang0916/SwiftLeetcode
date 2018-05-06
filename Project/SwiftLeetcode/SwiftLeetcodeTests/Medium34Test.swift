//
//  Medium34Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/5/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium34Test: XCTestCase {
    func testSearchRange() {
        var input: [Int] = []
        var target: Int
        var expected: [Int] = []
        
        input = [2, 2]
        target = 3
        expected = [-1, -1]
        XCTAssertEqual(expected, Medium34.searchRange(input, target))
        
        input = [1, 1]
        target = 1
        expected = [0, 1]
        XCTAssertEqual(expected, Medium34.searchRange(input, target))
        
        input = [5, 7, 7, 8, 8, 10]
        target = 8
        expected = [3, 4]
        XCTAssertEqual(expected, Medium34.searchRange(input, target))
        
        input = [5, 7, 7, 8, 8, 10]
        target = 6
        expected = [-1, -1]
        XCTAssertEqual(expected, Medium34.searchRange(input, target))
    }
}
