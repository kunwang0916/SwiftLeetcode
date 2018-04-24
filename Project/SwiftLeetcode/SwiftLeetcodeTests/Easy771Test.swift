//
//  Easy771Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/24/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Easy771Test: SwiftLeetcodeTests {
    func testNumJewelsInStones() {
        var j = "aA"
        var s = "aAAbbbb"
        var expected = 3
        XCTAssertEqual(expected, Easy771.numJewelsInStones(j, s))
        
        j = "z"
        s = "ZZ"
        expected = 0
        XCTAssertEqual(expected, Easy771.numJewelsInStones(j, s))
    }
}
