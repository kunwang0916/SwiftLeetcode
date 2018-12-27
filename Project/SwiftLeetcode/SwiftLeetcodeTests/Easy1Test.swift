//
//  Easy1Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 12/26/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Easy1Test: XCTestCase {
    func test() {
        var target = 9
        var nums = [2, 7, 11, 15]
        var expected = [0, 1]
        XCTAssertEqual(expected, Easy1.twoSum(nums, target))
    }
}
