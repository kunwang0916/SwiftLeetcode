//
//  lcofTests.swift
//  lcofTests
//

import XCTest
@testable import lcof

class lcofTests: XCTestCase {

    func testS03() {
        let s = S03()
        let nums = [2, 3, 1, 0, 2, 5, 3]
        let actual = s.findRepeatNumber(nums)
        XCTAssertTrue([2, 3].contains(actual))
    }
    
    func test04() {
        let s = S04()
        let m = [[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]];
        
        XCTAssertTrue(s.findNumberIn2DArray(m, 5))
        XCTAssertTrue(s.findNumberIn2DArray(m, 22))
        XCTAssertFalse(s.findNumberIn2DArray(m, 20))
        XCTAssertFalse(s.findNumberIn2DArray(m, 25))
    }
    
    func test05() {
        let s = S05()
        XCTAssertEqual("We%20are%20happy.", s.replaceSpace("We are happy."))
    }
    
    func test06() {
        let s = S06()
        let listNode = ListNode.withArray([1, 2, 3])
        XCTAssertEqual([3, 2, 1], s.reversePrint(listNode))
    }
}
