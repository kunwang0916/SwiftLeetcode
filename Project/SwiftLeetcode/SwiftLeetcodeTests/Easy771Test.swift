//
//  Easy771Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/24/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Easy771Test: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNumJewelsInStones() {
        var j = "aA"
        var s = "aAAbbbb"
        var expected = 3
        XCTAssertEqual(expected, Easy771.numJewelsInStones(j, s))
        
        j = "z"
        s = "ZZ"
        expected = 0
        XCTAssertEqual(expected, Easy771.numJewelsInStones(j, s))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
