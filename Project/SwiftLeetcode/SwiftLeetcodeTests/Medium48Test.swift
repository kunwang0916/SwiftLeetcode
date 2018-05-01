//
//  Medium48Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/1/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium48Test: XCTestCase {
    func testExample() {
        var input: [[Int]]
        var expected: [[Int]]
        input = [
            [1,2,3],
            [4,5,6],
            [7,8,9]
        ]
        expected = [
            [7,4,1],
            [8,5,2],
            [9,6,3]
        ]
        Medium48.rotate(&input)
        XCTAssertEqual(expected, input)
        
        input = [
            [ 5, 1, 9,11],
            [ 2, 4, 8,10],
            [13, 3, 6, 7],
            [15,14,12,16]
        ]
        expected = [
            [15,13, 2, 5],
            [14, 3, 4, 1],
            [12, 6, 8, 9],
            [16, 7,10,11]
        ]
        Medium48.rotate(&input)
        XCTAssertEqual(expected, input)
    }
    
}
