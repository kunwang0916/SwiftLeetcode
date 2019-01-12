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
        let target = 9
        let nums = [2, 7, 11, 15]
        let expected = [0, 1]
        XCTAssertEqual(expected, Easy1.twoSum(nums, target))
    }
}
