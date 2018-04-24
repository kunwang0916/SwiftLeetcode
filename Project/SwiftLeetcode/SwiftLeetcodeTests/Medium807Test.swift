//
//  Medium807Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/24/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium807Test: SwiftLeetcodeTests {
    func testMaxIncreaseKeepingSkyline() {
        var input = [ [3, 0, 8, 4],
                      [2, 4, 5, 7],
                      [9, 2, 6, 3],
                      [0, 3, 1, 0] ]
        var expected = 35
        XCTAssertEqual(expected, Medium807.maxIncreaseKeepingSkyline(input))
    }
}
