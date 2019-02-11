//
//  HardTest.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 1/21/19.
//  Copyright © 2019 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class HardTest: XCTestCase {

    func test980() {
        var array = [[1,0,0,0],[0,0,0,0],[0,0,2,-1]]
        var expected = 2
        XCTAssertEqual(expected, Hard980.uniquePathsIII(array))
        
        array = [[1,0,0,0],[0,0,0,0],[0,0,0,2]]
        expected = 4
        XCTAssertEqual(expected, Hard980.uniquePathsIII(array))
    }

    func test42() {
        let s = Hard42()
        var input = [0,1,0,2,1,0,1,3,2,1,2,1]
        var expected = 6
        XCTAssertEqual(expected, s.trap(input))
    }

}
