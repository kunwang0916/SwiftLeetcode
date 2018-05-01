//
//  Easy66Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/30/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Easy66Test: XCTestCase {
    
    func testPlusOne() {
        var input = [1,2,3]
        var expected = [1,2,4]
        XCTAssertEqual(expected, Easy66.plusOne(input))
        
        input = [4,3,2,1]
        expected = [4,3,2,2]
        XCTAssertEqual(expected, Easy66.plusOne(input))
        
        input = [9]
        expected = [1, 0]
        XCTAssertEqual(expected, Easy66.plusOne(input))
    }
}
