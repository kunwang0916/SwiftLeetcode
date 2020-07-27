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
    
    func testS11() {
        let s = S11()
        XCTAssertEqual(1, s.minArray([3, 4, 5, 1, 2]))
        XCTAssertEqual(0, s.minArray([2, 2, 2, 0, 1]))
    }
    
    func testS12() {
        let s = S12()
        XCTAssertTrue(s.exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCCED"))
        XCTAssertTrue(s.exist([["A"]], "A"))
        XCTAssertFalse(s.exist([["a","b"],["c","d"]], "abcd"))
    }
    
    func testS13() {
        let s = S13()
        XCTAssertEqual(3, s.movingCount(2, 3, 1))
        XCTAssertEqual(1, s.movingCount(3, 1, 0))
        XCTAssertEqual(15, s.movingCount(16, 8, 4))
    }
    
    func testS14I() {
        let s = S14I()
        XCTAssertEqual(1, s.cuttingRope(2))
        XCTAssertEqual(36, s.cuttingRope(10))
        XCTAssertEqual(18, s.cuttingRope(8))
    }
    
    func testS15() {
        let s = S15()
        XCTAssertEqual(2, s.hammingWeight(9))
        XCTAssertEqual(2, s.hammingWeight(3))
        XCTAssertEqual(3, s.hammingWeight(7))
    }
    
    func testS16() {
        let s = S16()
        XCTAssertEqual(0.00000, s.myPow(0.00001, 2147483647), accuracy: 0.0001)
        XCTAssertEqual(1024.00000, s.myPow(2.00000, 10), accuracy: 0.0001)
        XCTAssertEqual(9.26100000, s.myPow(2.10000, 3), accuracy: 0.0001)
    }
    
    func testS17() {
        let s = S17()
        XCTAssertEqual([1, 2, 3, 4, 5, 6, 7, 8, 9], s.printNumbers(1))
    }
    
    func testS18() {
        let s = S18()
        XCTAssertEqual(ListNode.withArray([9, 4, 5]), s.deleteNode(ListNode.withArray([9, 4, 1, 5]), 1))
    }
    
    func testS29() {
        let s = S29()
        XCTAssertEqual([1,2,3,6,9,8,7,4,5], s.spiralOrder([[1,2,3],[4,5,6],[7,8,9]]))
        XCTAssertEqual([1,2,3,4,8,12,11,10,9,5,6,7], s.spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12]]))
        XCTAssertEqual([], s.spiralOrder([]))
        XCTAssertEqual([7, 9, 6], s.spiralOrder([[7],[9],[6]]))
        XCTAssertEqual([1, 2, 4, 3], s.spiralOrder([[1, 2], [3, 4]]))
    }
    
    func testS31() {
        let s = S31()
        XCTAssertEqual(true, s.validateStackSequences([1, 2, 3, 4, 5], [4, 5, 3, 2, 1]))
        XCTAssertEqual(false, s.validateStackSequences([1, 2, 3, 4, 5], [4, 3, 5, 1, 2]))
    }
    
    func test39() {
        let s = S39()
        XCTAssertEqual(7, s.majorityElement([8, 8, 7, 7, 7]))
        XCTAssertEqual(3, s.majorityElement([3, 2, 3]))
        XCTAssertEqual(2, s.majorityElement([1, 2, 3, 2, 2, 2, 5, 4, 2]))
        XCTAssertEqual(1, s.majorityElement([1]))
    }
    
    func test40() {
        let s = S40()
        XCTAssertEqual(Set([1, 2]), Set(s.getLeastNumbers([3, 2, 1], 2)))
        XCTAssertEqual(Set([0]), Set(s.getLeastNumbers([0, 1, 2, 1], 1)))
    }
    
    func test42() {
        let s = S42()
        XCTAssertEqual(6, s.maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]))
        XCTAssertEqual(-1, s.maxSubArray([-1]))
    }
    
    func test47() {
        let s = S47()
        XCTAssertEqual(12, s.maxValue([[1,3,1],[1,5,1],[4,2,1]]))
    }
    
    func test48() {
        let s = S48()
        XCTAssertEqual(2, s.lengthOfLongestSubstring("abba"))
        XCTAssertEqual(3, s.lengthOfLongestSubstring("abcabcbb"))
        XCTAssertEqual(1, s.lengthOfLongestSubstring("bbbbb"))
        XCTAssertEqual(3, s.lengthOfLongestSubstring("pwwkew"))
    }
    
    func test50() {
        let s = S50()
        XCTAssertEqual("l", s.firstUniqChar("leetcode"))
        XCTAssertEqual("b", s.firstUniqChar("abaccdeff"))
        XCTAssertEqual("a", s.firstUniqChar("dddccdbba"))
    }
    
    func test53I() {
        let s = S53I()
        XCTAssertEqual(2, s.search([5, 7, 7, 8, 8, 10], 8))
        XCTAssertEqual(0, s.search([5, 7, 7, 8, 8, 10], 6))
        XCTAssertEqual(2, s.search([5, 7, 7, 8, 8, 10], 7))
    }
    
    func test57II() {
        let s = S57II()
        XCTAssertEqual([[2, 3, 4], [4, 5]], s.findContinuousSequence(9))
    }
}

