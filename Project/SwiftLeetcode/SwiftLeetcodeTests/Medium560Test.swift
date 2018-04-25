//
//  Medium560Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/25/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium560Test: XCTestCase {
    func testsubarraySum() {
        var array = [1, 1, 1]
        var k = 2
        var expect = 2
        XCTAssertEqual(expect, Medium560.subarraySum(array, k))
    
        array = [1,1,1, 2, -2, 4]
        k = 3
        expect = 3
        XCTAssertEqual(expect, Medium560.subarraySum(array, k))
    }

}
