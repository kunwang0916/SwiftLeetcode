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

}
