//
//  Medium279Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/4/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium279Test: XCTestCase {
    func testNumSquares() {
        var input:Int
        var expected: Int
        
        input = 12
        expected = 3
        XCTAssertEqual(expected, Medium279.numSquares(input))
        
        input = 13
        expected = 2
        XCTAssertEqual(expected, Medium279.numSquares(input))
        
        input = 4
        expected = 1
        XCTAssertEqual(expected, Medium279.numSquares(input))
        
        input = 9
        expected = 1
        XCTAssertEqual(expected, Medium279.numSquares(input))
    }
}
