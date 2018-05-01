//
//  Medium215Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/26/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium215Test: XCTestCase {
    
    func testFindKthLargest() {
        var input = [3,2,1,5,6,4]
        var k = 2
        var expected = 5
        XCTAssertEqual(expected, Medium215.findKthLargest(input, k))
        
        k = 3
        expected = 4
        XCTAssertEqual(expected, Medium215.findKthLargest(input, k))
        
        input = [1, 2, 5, 2]
        k = 2
        expected = 2
        XCTAssertEqual(expected, Medium215.findKthLargest(input, k))
    }

}
