//
//  Medium672Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/24/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium672Test: XCTestCase {
    func testFlipLights() {
        var n = 1, m = 1
        var expected = 2
        XCTAssertEqual(expected, Medium672.flipLights(n, m))
    
        n = 2
        m = 1
        expected = 3
        XCTAssertEqual(expected, Medium672.flipLights(n, m))
        
        n = 3
        m = 1
        expected = 4
        XCTAssertEqual(expected, Medium672.flipLights(n, m))
    }
    
}
