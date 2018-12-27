//
//  Medium139Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/6/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium139Test: XCTestCase {
    
    func testWordBreak() {
        var input: String
        var wordDic: [String]
        var expected: Bool
        
        input = "leetcode"
        wordDic = ["leet", "code"]
        expected = true
        XCTAssertEqual(expected, Medium139.wordBreak(input, wordDic))
        
        input = "applepenapple"
        wordDic = ["apple", "pen"]
        expected = true
        XCTAssertEqual(expected, Medium139.wordBreak(input, wordDic))
        
        input = "catsandog"
        wordDic = ["cats", "dog", "sand", "and", "cat"]
        expected = false
        XCTAssertEqual(expected, Medium139.wordBreak(input, wordDic))
        
        input = "cars"
        wordDic = ["car","ca","rs"]
        expected = true
        XCTAssertEqual(expected, Medium139.wordBreak(input, wordDic))
    }

}
