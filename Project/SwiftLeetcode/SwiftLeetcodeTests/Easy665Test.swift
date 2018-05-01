//
//  Easy665Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/1/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Easy665Test: XCTestCase {
    func testCheckPossibility() {
        var input: [Int]
        var expected: Bool
        
        input = [3, 4, 2, 3]
        expected = false
        XCTAssertEqual(expected, Easy665.checkPossibility(input))
        
        input = [4, 2, 3]
        expected = true
        XCTAssertEqual(expected, Easy665.checkPossibility(input))
        
        input = [4, 2, 1]
        expected = false
        XCTAssertEqual(expected, Easy665.checkPossibility(input))
    }
}
