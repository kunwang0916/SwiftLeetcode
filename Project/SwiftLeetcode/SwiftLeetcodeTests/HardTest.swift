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
    func test10() {
        var s: String
        var p: String
        let h = Hard10()
        var expected: Bool
        
        s = "abbb"
        p = "ab*"
        expected = true
        XCTAssertEqual(expected, h.isMatch(s, p))
        
        s = "aa"
        p = "a"
        expected = false
        XCTAssertEqual(expected, h.isMatch(s, p))
        
        s = "aa"
        p = "aa"
        expected = true
        XCTAssertEqual(expected, h.isMatch(s, p))
        
        s = "abc"
        p = "a.c"
        expected = true
        XCTAssertEqual(expected, h.isMatch(s, p))
    }
    
    func test42() {
        let s = Hard42()
        let input = [0,1,0,2,1,0,1,3,2,1,2,1]
        let expected = 6
        XCTAssertEqual(expected, s.trap(input))
    }
    
    
    func test980() {
        var array = [[1,0,0,0],[0,0,0,0],[0,0,2,-1]]
        var expected = 2
        XCTAssertEqual(expected, Hard980.uniquePathsIII(array))
        
        array = [[1,0,0,0],[0,0,0,0],[0,0,0,2]]
        expected = 4
        XCTAssertEqual(expected, Hard980.uniquePathsIII(array))
    }
}
