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
    
    func test07() {
        let s = S07()
        var node = s.buildTree([1, 2], [2, 1])
        XCTAssertEqual(1, node?.val)
        XCTAssertEqual(2, node?.left?.val)
        XCTAssertNil(node?.right)
        
        node = s.buildTree([1, 2], [1, 2])
        XCTAssertEqual(1, node?.val)
        XCTAssertEqual(2, node?.right?.val)
        XCTAssertNil(node?.left)
    }
    
    func test09() {
        let queue = S09()
        XCTAssertEqual(-1, queue.deleteHead())
        queue.appendTail(3)
        queue.appendTail(5)
        XCTAssertEqual(3, queue.deleteHead())
        XCTAssertEqual(5, queue.deleteHead())
        XCTAssertEqual(-1, queue.deleteHead())
    }
    
    func testS10I() {
        let s = S10I()
        let testTable = [
            0: 0,
            1: 1,
            2: 1,
            3: 2,
            4: 3,
            5: 5,
            10: 55,
        ]
        
        for (key, value) in testTable {
            XCTAssertEqual(value, s.fib(key))
        }
    }
    
    func testS10II() {
        let s = S10II()
        let testTable = [
            0: 1,
            1: 1,
            2: 2,
            3: 3,
            4: 5,
            5: 8,
            10: 89,
        ]
        
        for (key, value) in testTable {
            XCTAssertEqual(value, s.numWays(key))
        }
    }
    
}
