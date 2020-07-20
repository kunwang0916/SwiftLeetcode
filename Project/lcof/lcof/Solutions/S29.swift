//
//  S29.swift
//  lcof
//

class S29 {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        if matrix.count == 0 || matrix[0].count == 0{
            return []
        }
        
        let m = matrix.count
        let n = matrix[0].count
        let size = m * n
        var array = Array(repeating: 0, count: size)

        var lc = 0
        var rc = n - 1
        var tr = 0
        var br = m - 1
        var c = 0
        while (c < size) {
            // l -> r
            for col in lc...rc {
                array[c] = matrix[tr][col]
                c += 1
            }
            tr += 1
            guard c < size else {
                break
            }

            for row in tr...br {
                array[c] = matrix[row][rc]
                c += 1
            }
            rc -= 1
            guard c < size else {
                break
            }

            for col in (lc...rc).reversed() {
                array[c] = matrix[br][col]
                c += 1
            }
            br -= 1
            guard c < size else {
                break
            }

            for row in (tr...br).reversed() {
                array[c] = matrix[row][lc]
                c += 1
            }
            lc += 1
        }
        
        return array

    }
}
