//
//  Medium63Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 12/28/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium63Test: XCTestCase {
    func testUniquePathsWithObstacles() {
        var input = [
            [0,0,0],
            [0,1,0],
            [0,0,0]
        ]
        var expect = 2
        XCTAssertEqual(expect, Medium63.uniquePathsWithObstacles(input))
        
        input = [[1,0],
        ]
        expect = 0
        XCTAssertEqual(expect, Medium63.uniquePathsWithObstacles(input))
    }
}
