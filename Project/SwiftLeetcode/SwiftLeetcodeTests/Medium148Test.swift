//
//  Medium148Test.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 5/3/18.
//  Copyright © 2018 K W. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class Medium148Test: XCTestCase {

    func testSortList() {
        var input: String
        var expected: String
        input = "4->2->1->3"
        expected = "1->2->3->4"
        if let result = Medium148.sortList(ListNode.initWithString(input))?.toString() {
            XCTAssertEqual(expected, result)
        }
        
        input = "-1->5->3->4->0"
        expected = "-1->0->3->4->5"
        if let result = Medium148.sortList(ListNode.initWithString(input))?.toString() {
            XCTAssertEqual(expected, result)
        }
    }

}
