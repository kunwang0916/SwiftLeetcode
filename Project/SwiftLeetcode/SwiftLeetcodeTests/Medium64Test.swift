//
//  Medium64Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/25/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium64Test: XCTestCase {
    func testMindPathSum() {
        var input = [
            [1,3,1],
            [1,5,1],
            [4,2,1]
        ]
        var expect = 7
        XCTAssertEqual(expect, Medium64.minPathSum(input))
        
        input = [
            [1,1,1],
            [1,1,1],
            [1,1,1]
        ]
        expect = 5
        XCTAssertEqual(expect, Medium64.minPathSum(input))
    }
}
