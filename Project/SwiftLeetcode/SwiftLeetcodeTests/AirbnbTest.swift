//
//  AirbnbTest.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 6/15/19.
//  Copyright © 2019 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class AirbnbTest: XCTestCase {
    
    func testEncircular() {
        let ec = Encircular()
        let inputs = ["G", "L", "GRGL", "GGGGR", "RGL"]
        let expected = ["NO", "YES", "NO", "YES", "NO"]
        XCTAssertEqual(expected, ec.doesCircleExist(commands: inputs))
    }
    
    func testEllipsize() {
        let e = Ellipsize()
        let str = "Hello, World!"
        XCTAssertEqual("...d!", e.ellipsize(str, 5, .START))
        XCTAssertEqual("H...d!", e.ellipsize(str, 6, .MIDDLE))
        XCTAssertEqual("Hello...", e.ellipsize(str, 8, .END))
    }
    
    func testTextJustification() {
        let s = TextJustification()
        let input = ["first word", "my second sentence", "now it's third"]
        print(s.prettyPrint(input, 14))
    }
}
