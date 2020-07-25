//
//  S40.swift
//  lcof
//
class S40 {
    func getLeastNumbers(_ arr: [Int], _ k: Int) -> [Int] {
        var arr = arr
        rec(&arr, 0, arr.count - 1, k-1)
        return Array(arr[0..<k])
    }
    
    private func rec(_ arr: inout [Int], _ start: Int, _ end: Int, _ k: Int) {
        guard start < end else {
            return
        }
        
        let pivot = arr[start]
        var i = start, j = end
        while i <= j {
            while i<=j && arr[i] < pivot {
                i += 1
            }
            
            while i<=j && arr[j] > pivot {
                j -= 1
            }
            if i <= j {
                swap(&arr, i, j)
                i += 1
                j -= 1
            }
        }
        
        if (i >= k) {
            rec(&arr, start, i - 1, k)
        } else {
            rec(&arr, i, end, k)
        }
    }
    
    private func quickSelect(_ arr: inout [Int], _ k: Int) {
        var start = 0
        var end = arr.count - 1
        while start < end {
            let pivot = arr[start]
            var i = start, j = end
            while i <= j {
                while i<=j && arr[i] < pivot {
                    i += 1
                }
                
                while i<=j && arr[j] > pivot {
                    j -= 1
                }
                if i <= j {
                    swap(&arr, i, j)
                    i += 1
                    j -= 1
                }
            }
            
            if (i >= k) {
                end = i - 1
            } else {
                start = i
            }
        }
    }
    
    private func swap(_ arr: inout [Int], _ i: Int, _ j: Int) {
        let t = arr[i]
        arr[i] = arr[j]
        arr[j] = t
    }
}
