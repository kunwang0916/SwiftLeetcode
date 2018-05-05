//
//  Medium19Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/4/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium19Test: XCTestCase {
    func testRemoveNthFromEnd() {
        var nodeStr:String
        var n: Int
        var expectedStr: String
        var node:ListNode
        
        nodeStr = "1"
        n = 1
        expectedStr = ""
        node = ListNode.initWithString(nodeStr)
        if let result = Medium19.removeNthFromEnd(node, n) {
            XCTAssertEqual(expectedStr, result.toString())
        }
        
        nodeStr = "1->2->3->4"
        n = 3
        expectedStr = "1->3->4"
        node = ListNode.initWithString(nodeStr)
        if let result = Medium19.removeNthFromEnd(node, n) {
            XCTAssertEqual(expectedStr, result.toString())
        }
        
        
        nodeStr = "1->2->3->4"
        n = 2
        expectedStr = "1->2->4"
        node = ListNode.initWithString(nodeStr)
        if let result = Medium19.removeNthFromEnd(node, n) {
            XCTAssertEqual(expectedStr, result.toString())
        }
        
    }

}
