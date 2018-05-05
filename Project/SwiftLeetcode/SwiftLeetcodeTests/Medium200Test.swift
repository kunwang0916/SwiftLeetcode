//
//  Medium200Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/4/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium200Test: XCTestCase {
    func testNumberIslands() {
        var input:[[Character]]
        var expectd: Int
        
        input = [["1","1","1","1","0"],
                 ["1","1","0","1","0"],
                 ["1","1","0","0","0"],
                 ["0","0","0","0","0"]]
        expectd = 1
        XCTAssertEqual(expectd, Medium200.numIslands(input))
        
        input = [["1","0"],
                 ["0","1"]]
        expectd = 2
        XCTAssertEqual(expectd, Medium200.numIslands(input))
        
        input = [["1","1", "1"],
                 ["0","1", "0"],
                 ["1","1", "1"],]
        expectd = 1
        XCTAssertEqual(expectd, Medium200.numIslands(input))
    }

}
