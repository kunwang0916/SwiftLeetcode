//
//  Medium684.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/26/18.
//  Copyright © 2018 K W. All rights reserved.
//

import UIKit

public class Medium684: NSObject {
    // TODO: Union find
    public class func findRedundantConnection(_ edges: [[Int]]) -> [Int] {
        var parents:[Int:Int] = [:]
        var groups:[Int:[Int]] = [:]
        
        var result = [Int]()
        for edge in edges {
            if parents[edge[0]] != nil && parents[edge[1]] != nil && parents[edge[0]] == parents[edge[1]] {
                result = edge
            }
            
            var p0 = edge[0]
            var sizeP0 = 0
            if let newP0 = parents[p0] {
                p0 = newP0
                sizeP0 = groups[p0]!.count
            }
            
            var p1 = edge[1]
            var sizeP1 = 0
            if let newP1 = parents[p1] {
                p1 = newP1
                sizeP1 = groups[p1]!.count
            }
            
            var p:Int
            if sizeP1 > sizeP0 {
                p = p1
            } else {
                p = p0
            }
            
            parents[edge[0]] = p
            parents[edge[1]] = p
        }
        
        return result
    }
}
