//
//  Medium240Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/25/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium240Test: XCTestCase {

    func testSearchMatrix() {
        var matrix = [
            [1,   4,  7, 11, 15],
            [2,   5,  8, 12, 19],
            [3,   6,  9, 16, 22],
            [10, 13, 14, 17, 24],
            [18, 21, 23, 26, 30]
        ]
        var target = 5
        var expect = true
        XCTAssertEqual(expect, Medium240.searchMatrix(matrix, target))
        
        target = 20
        expect = false
        XCTAssertEqual(expect, Medium240.searchMatrix(matrix, target))
        
        matrix = [
            [1]
        ]
        target = 1
        expect = true
        XCTAssertEqual(expect, Medium240.searchMatrix(matrix, target))
        
        
        target = 2
        expect = false
        XCTAssertEqual(expect, Medium240.searchMatrix(matrix, target))
    }
}
