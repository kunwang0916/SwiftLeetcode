//
//  Medium56Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/4/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium56Test: XCTestCase {

    func testMerge() {
        var intervals:[Interval]
        var expected:[Interval]
        
        intervals = [
            Interval(1, 3),
            Interval(2, 6),
            Interval(8, 10),
            Interval(15, 18)
        ]
        expected = [
            Interval(1, 6),
            Interval(8, 10),
            Interval(15, 18)
        ]
        intervals = Medium56.merge(intervals)
        
        intervals = [
            Interval(1, 4),
            Interval(4, 5)
        ]
        expected = [
            Interval(1, 5),
        ]
        intervals = Medium56.merge(intervals)
    }
}
