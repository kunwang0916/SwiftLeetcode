//
//  Medium33.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/5/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium33Test: XCTestCase {
    func testSearch() {
        var nums:[Int] = []
        var target:Int
        var expected:Int
        
        nums = [4,5,6,7,0,1,2]
        target = 0
        expected = 4
        XCTAssertEqual(expected, Medium33.search(nums, target))
        
        nums = [4,5,6,7,0,1,2]
        target = 3
        expected = -1
        XCTAssertEqual(expected, Medium33.search(nums, target))
    }
}
