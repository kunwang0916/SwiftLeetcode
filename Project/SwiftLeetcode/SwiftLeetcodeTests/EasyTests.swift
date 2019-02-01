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
    func test88() {
        var n1 = [1, 2, 3, 5, 0, 0, 0, 0]
        let n2 = [3, 7, 8]
        let expected = [1, 2, 3, 3, 5, 7, 8, 0]
        Easy88.merge(&n1, 4, n2, 3)
        XCTAssertEqual(expected, n1)
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
}
