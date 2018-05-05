//
//  Medium17.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/4/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium17Test: XCTestCase {
    func testLetterCombinations() {
        var input:String
        var expected:[String]
        
        input = "23"
        expected = ["ad", "bd", "cd", "ae", "be", "ce", "af", "bf", "cf"]
        XCTAssertEqual(expected, Medium17.letterCombinations(input))
    }
}
