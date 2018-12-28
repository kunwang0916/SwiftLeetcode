//
//  Medium684Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 12/26/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium684Test: XCTestCase {
    func testFindRedundantConnection() {
        var edges:[[Int]]
        var expected:[Int]
        
        edges = [[3,4],[1,2],[2,4],[3,5],[2,5]]
        expected = [2, 5]
        XCTAssertEqual(expected, Medium684.findRedundantConnection(edges))
        
        edges = [[1,2], [1,3], [2,3]]
        expected = [2, 3]
        XCTAssertEqual(expected, Medium684.findRedundantConnection(edges))
        
        edges = [[1,2], [2,3], [3,4], [1,4], [1,5]]
        expected = [1, 4]
        XCTAssertEqual(expected, Medium684.findRedundantConnection(edges))
    }
    
}
