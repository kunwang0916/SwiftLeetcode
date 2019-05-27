//
//  Medium210.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/26/19.
//  Copyright © 2019 K W. All rights reserved.
//

/*
 210. Course Schedule II
 https://leetcode.com/problems/course-schedule-ii/
 time: O(V+E), V is num of vertex, e is num of edges
 space: O(V+E), V is num of vertex, e is num of edges
 */

import UIKit

class Medium210: NSObject {
    func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        var inDegree = Array(repeating: 0, count: numCourses);
        for pre in prerequisites {
            // udpate indegree accordingly
            inDegree[pre[0]] = inDegree[pre[0]] + 1
        }
        
        var queue:[Int] = []
        for course in 0..<numCourses {
            if inDegree[course] == 0 {
                queue.append(course);
            }
        }
        
        var order:[Int] = []
        while queue.count > 0 {
            let popCourse = queue.removeFirst()
            order.append(popCourse)
            for pre in prerequisites {
                if pre[1] == popCourse {
                    inDegree[pre[0]] = inDegree[pre[0]] - 1
                    if inDegree[pre[0]] == 0 {
                        queue.append(pre[0])
                    }
                }
            }
        }
        
        if order.count != numCourses {
            return []
        }
        return order
    }
}
