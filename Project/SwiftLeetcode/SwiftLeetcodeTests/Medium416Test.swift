//
//  Medium416Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/3/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium416Test: XCTestCase {
    
    func testCanPartition() {
        var input:[Int]
        var expected: Bool
        
        input = [1, 5, 11, 5]
        expected = true
        XCTAssertEqual(expected, Medium416.canPartition(input))
        
        input = [1, 2 ,5]
        expected = false
        XCTAssertEqual(expected, Medium416.canPartition(input))
        
        input = [1, 2, 3, 5]
        expected = false
        XCTAssertEqual(expected, Medium416.canPartition(input))
    }

}
