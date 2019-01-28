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
    
    func test518() {
        var amount: Int
        var coins: [Int]
        var expected: Int
        
        amount = 5
        coins = [1, 2, 5]
        expected = 4
        XCTAssertEqual(expected, Medium518.change(amount, coins))
        
        amount = 3
        coins = [2]
        expected = 0
        XCTAssertEqual(expected, Medium518.change(amount, coins))
        
        amount = 10
        coins = [10]
        expected = 1
        XCTAssertEqual(expected, Medium518.change(amount, coins))
    }

    func test978() {
        var a = [Int]()
        var expected: Int
        
        a = [4,8,12,16]
        expected = 2
        XCTAssertEqual(expected, Medium978.maxTurbulenceSize(a))
        
        a = [9,4,2,10,7,8,8,1,9]
        expected = 5
        XCTAssertEqual(expected, Medium978.maxTurbulenceSize(a))
        
        a = [100]
        expected = 1
        XCTAssertEqual(expected, Medium978.maxTurbulenceSize(a))
    }
    
    func test983() {
        var days = [Int]()
        var costs = [Int]()
        var expected: Int
        
        days = [1, 4, 6, 7, 8, 20]
        costs = [2, 7, 15]
        expected = 11
        XCTAssertEqual(expected, Medium983.mincostTickets(days, costs))
        
        days = [1,2,3,4,5,6,7,8,9,10,30,31]
        costs = [2, 7, 15]
        expected = 17
        XCTAssertEqual(expected, Medium983.mincostTickets(days, costs))
        
        days = [1,2,3,4,6,8,9,10,13,14,16,17,19,21,24,26,27,28,29]
        costs = [3,14,50]
        expected = 50
        XCTAssertEqual(expected, Medium983.mincostTickets(days, costs))
    }
}
