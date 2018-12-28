//
//  Easy62Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 12/27/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Easy62Test: XCTestCase {
    
    func testUniquePaths() {
        var m:Int
        var n:Int
        var excepted:Int
        
        m = 3; n = 2; excepted = 3
        XCTAssertEqual(excepted, Easy62.uniquePaths(m, n))
        
        m = 7; n = 3; excepted = 28
        XCTAssertEqual(excepted, Easy62.uniquePaths(m, n))
    }
}
