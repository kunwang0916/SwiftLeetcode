//
//  MediumTest.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 1/15/19.
//  Copyright © 2019 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class MediumTest: XCTestCase {

    func test322() {
        var coins = [1, 2, 5]
        var amount = 11
        var expected = 3
        XCTAssertEqual(expected, Medium322.coinChange(coins, amount))
        
        coins = [2]
        amount = 3
        expected = -1
        XCTAssertEqual(expected, Medium322.coinChange(coins, amount))
        
        
        coins = [1]
        amount = 0
        expected = 0
        XCTAssertEqual(expected, Medium322.coinChange(coins, amount))
        
        coins = [1]
        amount = 1
        expected = 1
        XCTAssertEqual(expected, Medium322.coinChange(coins, amount))
    }

}
