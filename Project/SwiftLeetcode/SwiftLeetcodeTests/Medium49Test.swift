//
//  Medium49Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/3/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium49Test: XCTestCase {
    
    func testGroupAnagrams() {
        var input:[String]
        var expected:[[String]]
        
        input = ["eat", "tea", "tan", "ate", "nat", "bat"]
        expected = [
            ["eat","tea","ate"],
            ["tan","nat"],
            ["bat"]
        ]
        XCTAssertEqual(expected, Medium49.groupAnagrams(input))
    }

}
