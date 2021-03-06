//
//  MediumTest.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 1/15/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 161. One Edit Distance
https://leetcode.com/problems/one-edit-distance/
 **/

import XCTest
@testable import SwiftLeetcode

class MediumTest: XCTestCase {

    func test6() {
        
        let s = Medium6()
        var str = ""
        var expected = ""
        var row = 1
        
        str = "AB"
        expected = "AB"
        row = 1
        XCTAssertEqual(expected, s.convert(str, row))
        row = 2
        XCTAssertEqual(expected, s.convert(str, row))
        
        str = "PAYPALISHIRING"
        expected = "PAHNAPLSIIGYIR"
        row = 3
        XCTAssertEqual(expected, s.convert(str, row))
        expected = "PINALSIGYAHRPI"
        row = 4
        XCTAssertEqual(expected, s.convert(str, row))
    }
    
    func test15() {
        let nums = [-1, 0, 1, 2, -1, -4]
        _ = Medium15.threeSum(nums)
    }
    
    func test39() {
        let candidates = [2,3,6,7]
        let target = 7
        let expected = [[2, 2, 3], [7]]
        let s = Medium39()
        XCTAssertEqual(expected, s.combinationSum(candidates, target))
    }
    
    
    func test50() {
        var expected: Double
        var x: Double
        var n: Int
        var result: Double
        let s = Medium50()
        
        expected = Double(1024)
        x = Double(2)
        n = 10
        result = s.myPow(x, n)
        XCTAssertTrue(expected.isEqual(to: result))

        expected = Double(0.250)
        x = Double(2)
        n = -2
        result = s.myPow(x, n)
        XCTAssertTrue(expected.isEqual(to: result))
    }
    
    func test54() {
        var input = [
            [ 1, 2, 3 ],
            [ 4, 5, 6 ],
            [ 7, 8, 9 ]
        ]
        var expected = [1,2,3,6,9,8,7,4,5]
        let s = Medium54()
        XCTAssertEqual(expected, s.spiralOrder(input))
        
        input = [
            [1, 2, 3, 4],
            [5, 6, 7, 8],
            [9,10,11,12]
        ]
        expected = [1,2,3,4,8,12,11,10,9,5,6,7]
        XCTAssertEqual(expected, s.spiralOrder(input))
        
        input = [
            [3],
            [2]
        ]
        expected = [3, 2]
        XCTAssertEqual(expected, s.spiralOrder(input))
    }
    
    func test127() {
        var beginWord = ""
        var endWord = ""
        var wordList = [String]()
        var expected = 0
        let s = Medium127()
        
        beginWord = "hit"
        endWord = "cog"
        wordList = ["hot","dot","dog","lot","log","cog"]
        expected = 5
        
        XCTAssertEqual(expected, s.ladderLength(beginWord, endWord, wordList))
        
        
        wordList = ["hot","dot","dog","lot","log"]
        expected = 0
        XCTAssertEqual(expected, s.ladderLength(beginWord, endWord, wordList))
    }
    
    func test161() {
        var s = ""
        var t = ""
        let m = Medium161()
        var expected = false
        XCTAssertEqual(expected, m.isOneEditDistance(s, t))
    
        s = "ab"
        t = "cab"
        expected = true
        XCTAssertEqual(expected, m.isOneEditDistance(s, t))
        
        s = "c"
        t = ""
        expected = true
        XCTAssertEqual(expected, m.isOneEditDistance(s, t))
        
        s = "c"
        t = "c"
        expected = false
        XCTAssertEqual(expected, m.isOneEditDistance(s, t))
        
        s = "ab"
        t = "acb"
        expected = true
        XCTAssertEqual(expected, m.isOneEditDistance(s, t))
    }
    
    func test208() {
        let t = Trie()
        t.insert("snap")
        t.insert("snapchat")
        
        var result:[String]
        var expected:[String]
        result = t.findWords("s")
        expected = ["snap", "snapchat"]
        XCTAssertEqual(expected, result)
        
        result = t.findWords("snapc")
        expected = ["snapchat"]
        XCTAssertEqual(expected, result)
    
        result = t.findWords("facebook")
        expected = []
        XCTAssertEqual(expected, result)
        
        t.insert("go")
        result = t.findWords("google")
        expected = []
        XCTAssertEqual(expected, result)
        
        result = t.findWords("g")
        expected = ["go"]
        XCTAssertEqual(expected, result)
    }
    
    func test253() {
        var intervals = [[0, 30], [5, 10], [15, 20]]
        var expected = 2
        XCTAssertEqual(expected, Medium253.minMeetingRooms(intervals))
        intervals = [[7, 10], [2, 4]]
        expected = 1
        XCTAssertEqual(expected, Medium253.minMeetingRooms(intervals))
    }
    
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
    
    func test990() {
        var input = [
            "a==b",
            "b!=a",
        ]
        var expected = false
        let s = Medium990()
        XCTAssertEqual(expected, s.equationsPossible(input))
        
        input = [
            "b==a",
            "a==b"
        ]
        expected = true
        XCTAssertEqual(expected, s.equationsPossible(input))
        
        input = [
            "b==a",
            "b==c",
            "a==c"
        ]
        expected = true
        XCTAssertEqual(expected, s.equationsPossible(input))
        
        input = [
            "a==b","b!=c","c==a"
        ]
        expected = false
        XCTAssertEqual(expected, s.equationsPossible(input))
        
        input = [
            "c==c","b==d","x!=z"
        ]
        expected = true
        XCTAssertEqual(expected, s.equationsPossible(input))
    }
    
    func test46()  {
        var nums = [1, 2, 3]
        let s = Medium46()
        print(s.permute(nums))
        
        nums = []
        print(s.permute(nums))
    }
    
    func test1004()  {
        var nums = [1,1,1,0,0,0,1,1,1,1,0]
        var k = 2
        var expect = 6
        let s = Medium1004()
        XCTAssertEqual(expect, s.longestOnes(nums, k))
        
        nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1]
        k = 3
        expect = 10
        XCTAssertEqual(expect, s.longestOnes(nums, k))
    }
    
    func test1014()  {
        var weights = [1,2,3,4,5,6,7,8,9,10]
        var D = 5
        var expect = 15
        let s = Medium1014()
        XCTAssertEqual(expect, s.shipWithinDays(weights, D))
        
        weights =  [3,2,2,4,1,4]
        D = 3
        expect = 6
        XCTAssertEqual(expect, s.shipWithinDays(weights, D))
        
        weights =  [1,2,3,1,1]
        D = 4
        expect = 3
        XCTAssertEqual(expect, s.shipWithinDays(weights, D))
    }
    
    func test1058() {
        let s = Medium1058()
        var expected = ""
        var prices = [String]()
        var target = 0
        
        prices = ["0.700","2.800","4.900"]
        target = 8
        expected = "1.000"
        XCTAssertEqual(expected, s.minimizeError(prices, target))
        
        prices = ["1.500","2.500","3.500"]
        target = 10
        expected = "-1"
        XCTAssertEqual(expected, s.minimizeError(prices, target))
        
        
        prices = ["2.000","2.000","2.000","2.000","2.000"]
        target = 11
        expected = "-1"
        XCTAssertEqual(expected, s.minimizeError(prices, target))
    }
    
}
