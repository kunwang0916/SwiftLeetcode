//
//  Medium207.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/26/19.
//  Copyright © 2019 K W. All rights reserved.
//
//

/*
 207. Course Schedule
 https://leetcode.com/problems/course-schedule/
 time: O(V+E), V is num of vertex, e is num of edges
 space: O(V+E), V is num of vertex, e is num of edges
*/

import UIKit

class Medium207: NSObject {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        if numCourses <= 0 {
            return false
        }
        
        var inDegree = Array(repeating: 0, count: numCourses);
        // O(len(prerequisites))
        for pre in prerequisites {
            // update indegree accordingly
            inDegree[pre[0]] = inDegree[pre[0]] + 1
        }
        
        var queue:[Int] = [];
        // O(n), n is num of Courses
        for course in 0..<numCourses {
            // find course that in-degree is 0
            if inDegree[course] == 0 {
                queue.append(course)
            }
        }
        
        var canFinishCount = 0
        // O(V+E), V is num of vertex, e is num of edges
        while queue.count > 0 {
            // dequeue
            let curCourse = queue.removeFirst()
            canFinishCount += 1
            for pre in prerequisites {
                if (curCourse == pre[1]) {
                    // decrease the in-degree accordingly
                    inDegree[pre[0]] = inDegree[pre[0]] - 1
                    if inDegree[pre[0]] == 0 {
                        // push into queue once we have another in-degree zero course
                        queue.append(pre[0])
                    }
                }
            }
        }
        
        return canFinishCount == numCourses
    }
}
