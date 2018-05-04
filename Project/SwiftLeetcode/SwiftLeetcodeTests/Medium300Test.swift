//
//  Medium300Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/1/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium300Test: XCTestCase {
    func testFirstMissingPositive() {
        var input: [Int]
        var expected: Int
        
        input = [10, 9, 2, 5, 3, 7, 101, 18]
        expected = 4
        XCTAssertEqual(expected, Medium300.lengthOfLIS(input))
        
        input = [10, 9, 2, 5, 3, 1, 101, 18]
        expected = 3
        XCTAssertEqual(expected, Medium300.lengthOfLIS(input))
    }
}

