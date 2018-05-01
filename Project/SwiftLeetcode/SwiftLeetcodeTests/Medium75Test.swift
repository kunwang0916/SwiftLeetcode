//
//  Medium75Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/1/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest

@testable import SwiftLeetcode

class Medium75Test: XCTestCase {
    
    func testSearchMatrix() {
        var input:[Int]
        var expect:[Int]
        
        input = [2, 0, 1]
        expect = [0, 1, 2]
        Medium75.sortColors(&input)
        XCTAssertEqual(expect, input)
        
        input = [2,0,2,1,1,0]
        expect = [0,0,1,1,2,2]
        Medium75.sortColors(&input)
        XCTAssertEqual(expect, input)
        
        input = [2,0,2,1,0,1]
        expect = [0,0,1,1,2,2]
        Medium75.sortColors(&input)
        XCTAssertEqual(expect, input)
    }
}

