func mergeSort(_ arr: [Int]) -> [Int] {
    guard arr.count > 1 else {return arr}
    let mid = arr.count/2
    let left = mergeSort(Array(arr[0..<mid]))
    let right = mergeSort(Array(arr[mid..<arr.count]))

    return merge(left, right)
}

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var res = [Int]()
    var leftIndex = 0
    var rightIndex = 0
    
    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]
        
        if leftElement < rightElement {
            res.append(leftElement)
            leftIndex += 1
        } else if leftElement > rightElement {
            res.append(rightElement)
            rightIndex += 1
        } else {
            res.append(leftElement)
            res.append(rightElement)
            leftIndex += 1
            rightIndex += 1
        }
    }
    
    while leftIndex < left.count {
        res.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count {
        res.append(right[rightIndex])
        rightIndex += 1
    }

    return res
}

let arr = [3, 5, 6, 2, 19, 1]

print(mergeSort(arr))
