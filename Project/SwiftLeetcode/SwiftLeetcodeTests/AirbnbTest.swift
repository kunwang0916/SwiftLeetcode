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
}
