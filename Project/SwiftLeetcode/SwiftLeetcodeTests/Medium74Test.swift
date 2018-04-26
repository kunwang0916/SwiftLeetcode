//
//  Easy74Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/25/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium74Test: XCTestCase {
    
    func testSearchMatrix() {
        var matrix = [
            [1,   3,  5,  7],
            [10, 11, 16, 20],
            [23, 30, 34, 50]
        ]
        var target = 3
        var expect = true
        XCTAssertEqual(expect, Medium74.searchMatrix(matrix, target))
        
        matrix = [
            [1,   3,  5,  7],
            [10, 11, 16, 20],
            [23, 30, 34, 50]
        ]
        target = 13
        expect = false
        XCTAssertEqual(expect, Medium74.searchMatrix(matrix, target))
        
        matrix = [
            [1]
        ]
        target = 1
        expect = true
        XCTAssertEqual(expect, Medium74.searchMatrix(matrix, target))
    }
    
}
