//
//  S13.swift
//  lcof
//

class S13 {
    private var sumMap = [Int: Int]()
    
    func movingCount(_ m: Int, _ n: Int, _ k: Int) -> Int {
        var visited = Array(repeating: Array(repeating: false, count: n), count: m)
        return dfs(0, 0, k, &visited)
    }

    private func dfs(_ r: Int, _ c: Int, _ k: Int, _ visited: inout [[Bool]]) -> Int {
        if r == visited.count || c == visited[0].count || visited[r][c] || bitSum(r) + bitSum(c) > k {
            return 0
        }

        visited[r][c] = true
        return 1 + dfs(r + 1, c, k, &visited) + dfs(r, c + 1,  k, &visited)
    }

    private func bitSum(_ n: Int) -> Int {
        if let s = sumMap[n] {
            return s
        }
        
        var sum = 0
        var num = n
        while num > 0 {
            sum += num % 10
            num /= 10
        }
        
        sumMap[n] = sum
        return sum
    }
}
