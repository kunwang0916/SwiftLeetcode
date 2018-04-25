//
//  Easy38Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/24/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Easy38Test: XCTestCase {
    
    func testCountAndSay() {
        var n = 1
        var expected = "1"
        XCTAssertEqual(expected, Easy38.countAndSay(n))
        
        n = 4
        expected = "1211"
        XCTAssertEqual(expected, Easy38.countAndSay(n))
    }
}
