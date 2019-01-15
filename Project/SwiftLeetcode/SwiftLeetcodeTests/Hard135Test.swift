//
//  Hard135Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 1/14/19.
//  Copyright © 2019 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Hard135Test: XCTestCase {

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Hard135.candy([1, 0, 2]), 5)
        XCTAssertEqual(Hard135.candy([1, 2, 2]), 4)
        XCTAssertEqual(Hard135.candy([1,3,2,2,1]), 7)
        XCTAssertEqual(Hard135.candy([1,2,87,87,87,2,1]), 13)
    }

}
