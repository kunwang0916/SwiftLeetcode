//
//  DemoTest.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 1/11/19.
//  Copyright © 2019 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class DemoTest: XCTestCase {

    func testConvert() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(1, Demo.convert(Character("1")))
        XCTAssertEqual(7, Demo.convert(Character("7")))
    }
    
    func testStringToNum() {
        XCTAssertEqual(9999, Demo.stringToNum("9999"))
        XCTAssertEqual(-333, Demo.stringToNum("-333"))
    }
    
    func testSuperIterator() {
        let array:[Any] = [[-3], [-2, -1], 1 , 2, [3, 4, [5, 6, 7]], 8, 9]
        
        var s = SuperIterator(array)
        
        let e1 = s.next() as! Int
        XCTAssertEqual(-3, e1)
        let e2 = s.next() as! Int
        XCTAssertEqual(-2, e2)
        let e3 = s.next() as! Int
        XCTAssertEqual(-1, e3)
        let left = s.all() as! [Int]
        XCTAssertEqual([1, 2, 3, 4, 5, 6, 7, 8, 9], left)
        
        let strArray:[Any] = ["hello", ["world"], ["swift", "rocks"], "yeah"]
        var strIterator = SuperIterator(strArray)
        let firstStr = strIterator.next() as! String
        XCTAssertEqual("hello", firstStr)
        let flatStrs = strIterator.all() as! [String]
        XCTAssertEqual(["world", "swift", "rocks", "yeah"], flatStrs)
    }

}
