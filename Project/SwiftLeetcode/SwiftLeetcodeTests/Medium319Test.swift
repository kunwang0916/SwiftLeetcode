//
//  Medium319Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 4/24/18.
//  Copyright © 2018 K W. All rights reserved.
//
import XCTest
@testable import SwiftLeetcode

class Medium319Test: XCTestCase {
    func testBulbSwitch() {
        let n = 3
        let expect = 1
        XCTAssertEqual(expect, Medium319.bulbSwitch(n))
    }
}
