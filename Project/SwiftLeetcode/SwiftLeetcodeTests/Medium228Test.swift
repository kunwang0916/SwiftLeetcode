//
//  Medium228Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/1/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium228Test: XCTestCase {

    func testSummaryRanges() {
        var input: [Int]
        var expected: [String]
        
        input = [0,1,2,4,5,7]
        expected = ["0->2","4->5","7"]
        XCTAssertEqual(expected, Medium228.summaryRanges(input))
        
        input =  [0,2,3,4,6,8,9]
        expected = ["0","2->4","6","8->9"]
        XCTAssertEqual(expected, Medium228.summaryRanges(input))
        
        input =  []
        expected = []
        XCTAssertEqual(expected, Medium228.summaryRanges(input))
    }

}
