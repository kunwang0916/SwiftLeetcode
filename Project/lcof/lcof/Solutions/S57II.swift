//
//  S57II.swift
//  lcof
//

class S57II {
    func findContinuousSequence(_ target: Int) -> [[Int]] {
        var result = [[Int]]()
        var sum = 0
        var array = [Int]()
        for j in 1..<target {
            if sum == target {
                result.append(array)
            }
            
            sum += j
            array.append(j)
            
            while sum > target {
                let d = array.removeFirst()
                sum -= d
            }
        }

        return result
    }
}
