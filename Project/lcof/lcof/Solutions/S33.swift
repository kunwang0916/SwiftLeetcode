//
//  S33.swift
//  lcof
//
class S33 {
    func verifyPostorder(_ postorder: [Int]) -> Bool {
        var postorder = postorder
        let n = postorder.count
        return verifyPostorder(&postorder, 0, n - 1)
    }

    private func verifyPostorder(_ order: inout [Int], _ start: Int, _ end: Int) -> Bool {
        if start >= end {
            return true
        }

        let rootVal = order[end]
        var mid = start
        var secHalf = false
        for i in (start..<end) {
            if order[i] > rootVal {
                if secHalf != true {
                    mid = i
                    secHalf = true
                }
            } else if secHalf == true {
                return false
            }
        }

        return verifyPostorder(&order, start, mid - 1)
            && verifyPostorder(&order, mid, end - 1)
    }
}
