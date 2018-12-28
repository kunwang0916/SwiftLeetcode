//
//  Easy70Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 12/27/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Easy70Test: XCTestCase {

    func testClimbStairs() {
        let testTable:[[Int]] = [
            [0, 1],
            [1, 1],
            [2, 2],
            [5, 8],
            [6, 13],
            [7, 21],
            [10, 89]
        ]
        
        for testCase in testTable {
            let input:Int = testCase[0]
            let excepted:Int = testCase[1]
            XCTAssertEqual(excepted, Easy70.recursive(input))
            XCTAssertEqual(excepted, Easy70.arrayDP(input))
            XCTAssertEqual(excepted, Easy70.constDP(input))
        }
    }

}
