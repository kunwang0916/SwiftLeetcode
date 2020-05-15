//
//  Medium1143Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/15/20.
//  Copyright © 2020 K W. All rights reserved.
//

import Foundation
import XCTest
@testable import SwiftLeetcode

class Medium1143Test: XCTestCase {
    func testLongestCommonSubsequence() {
        let t = Medium1143()
        XCTAssertEqual(3, t.longestCommonSubsequence("abcde", "ace"))
        XCTAssertEqual(3, t.longestCommonSubsequence("abc", "abc"))
        XCTAssertEqual(0, t.longestCommonSubsequence("abc", "ded"))
    }
}
