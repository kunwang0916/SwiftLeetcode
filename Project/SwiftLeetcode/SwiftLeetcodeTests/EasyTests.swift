//
//  EasyTests.swift
//  SwiftLeetcodeTests
//
//  Created by roosky on 1/27/19.
//  Copyright © 2019 K W. All rights reserved.
//
import XCTest
@testable import SwiftLeetcode

class EasyTests: XCTestCase {
    
    func test67() {
        let s = Easy67()
        var a = "1010"
        var b = "1011"
        var expected = "10101"
        XCTAssertEqual(expected, s.addBinary(a, b))
        
        a = "11"
        b = "1"
        expected = "100"
        XCTAssertEqual(expected, s.addBinary(a, b))
    }
    
    func test88() {
        var n1 = [1, 2, 3, 5, 0, 0, 0, 0]
        let n2 = [3, 7, 8]
        let expected = [1, 2, 3, 3, 5, 7, 8, 0]
        Easy88.merge(&n1, 4, n2, 3)
        XCTAssertEqual(expected, n1)
    }
    
    func test242() {
        let e = Easy242()
        var s = "anagram"
        var t = "nagaram"
        XCTAssertEqual(true, e.isAnagram(s, t))
        
        s = "rat"
        t = "car"
        XCTAssertEqual(false, e.isAnagram(s, t))
    }
    
    func test257() {
        let t = TreeNode(1)
        let t2 = TreeNode(2)
        t2.right = TreeNode(5)
        t.left = t2
        t.right = TreeNode(3)
        
        let s = Easy257()
        print(s.binaryTreePaths(t))
    }
    
    func test733 () {
        let image = [[1,1,1],[1,1,0],[1,0,1]]
        let sr = 1, sc = 1, newColor = 2
        let expected = [[2,2,2],[2,2,0],[2,0,1]]
        let s = Easy733()
        XCTAssertEqual(expected, s.floodFill(image, sr, sc, newColor))
    }
    
    func test1005()  {
        let s = Easy1005()
        XCTAssertEqual(20, s.largestSumAfterKNegations([5,6,9,-3,3], 2))
        XCTAssertEqual(6, s.largestSumAfterKNegations([3,-1,0,2], 3))
        XCTAssertEqual(13, s.largestSumAfterKNegations([2, -3, -1, 5, -4], 2))
        XCTAssertEqual(5, s.largestSumAfterKNegations([4, 2, 3], 1))
        
    }
    
    func test1012() {
        let s = Easy1012()
        XCTAssertEqual(5, s.bitwiseComplement(10))
        XCTAssertEqual(2, s.bitwiseComplement(5))
        XCTAssertEqual(0, s.bitwiseComplement(7))
    }
}
