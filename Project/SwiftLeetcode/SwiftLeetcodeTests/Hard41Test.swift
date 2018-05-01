//
//  Hard41.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/30/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Hard41Test: XCTestCase {
    func testFirstMissingPositive() {
        var input = [0]
        var expected = 1
        XCTAssertEqual(expected, Hard41.firstMissingPositive(input))
        
        input = [-1,1,3,6,4]
        expected = 2
        XCTAssertEqual(expected, Hard41.firstMissingPositive(input))
        
        input = [0,5,9,2,1,3,7]
        expected = 4
        XCTAssertEqual(expected, Hard41.firstMissingPositive(input))
    }
}
