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
    
    func test68() {
        let s = Hard68()
        
        var words = ["This", "is", "an", "example", "of", "text", "justification."]
        var maxWidth = 16
        var expected = [
            "This    is    an",
            "example  of text",
            "justification.  "
        ]
        XCTAssertEqual(expected, s.fullJustify(words, maxWidth))
        
        words =  ["What","must","be","acknowledgment","shall","be"]
        maxWidth = 16
        expected = [
            "What   must   be",
            "acknowledgment  ",
            "shall be        "
        ]
        XCTAssertEqual(expected, s.fullJustify(words, maxWidth))
        
        words =  ["Science","is","what","we","understand","well","enough","to","explain",
                  "to","a","computer.","Art","is","everything","else","we","do"]
        maxWidth = 20
        expected = [
            "Science  is  what we",
            "understand      well",
            "enough to explain to",
            "a  computer.  Art is",
            "everything  else  we",
            "do                  "
        ]
        XCTAssertEqual(expected, s.fullJustify(words, maxWidth))
    }
    
    func test76() {
        let solution = Hard76()
        var s = "ADOBECODEBANC"
        var t = "ABC"
        var expected = "BANC"
        XCTAssertEqual(expected, solution.minWindow(s, t));
        
        s = "aa"
        t = "aa"
        expected = "aa"
        XCTAssertEqual(expected, solution.minWindow(s, t));
    }
    
    func test329() {
        let s = Hard329()
        var nums =
            [
                [9,9,4],
                [6,6,8],
                [2,1,1]
        ]
        XCTAssertEqual(4, s.longestIncreasingPath(nums));
        
        nums = [
            [3,4,5],
            [3,2,6],
            [2,2,1]
        ]
        XCTAssertEqual(4, s.longestIncreasingPath(nums));
    }
    
    func test336() {
        let s = Hard336()
        XCTAssertEqual([[0,1],[1,0]], s.palindromePairs(["a",""]).sorted{ $0[0] < $1[0] })
        XCTAssertEqual([[0,1],[1,0],[2,4], [3,2]], s.palindromePairs(["abcd","dcba","lls","s","sssll"]).sorted{ $0[0] < $1[0] })
        XCTAssertEqual([[0,1],[1,0]] , s.palindromePairs(["bat","tab","cat"]).sorted{ $0[0] < $1[0] })
        
    }
    
    func test829() {
        let s = Hard829()
        XCTAssertEqual(2, s.consecutiveNumbersSum(5))
        XCTAssertEqual(3, s.consecutiveNumbersSum(9))
        XCTAssertEqual(4, s.consecutiveNumbersSum(15))
        XCTAssertEqual(1, s.consecutiveNumbersSum(1))
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
