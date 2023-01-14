func mergeSort(arr: [Int]) -> [Int] {
    if(arr.count < 2) {
        return arr;
    }
    
    var midIndex: Int = arr.count / 2
    var leftArr = [Int](arr[arr.startIndex..<midIndex])
    var rightArr = [Int](arr[midIndex..<arr.endIndex])
    
    return merge(left: mergeSort(arr: leftArr), right: mergeSort(arr: rightArr))
}

func merge(left: [Int], right: [Int]) -> [Int] {
    var leftIndex = 0;
    var rightIndex = 0;
    var results: [Int] = [Int]()
    while leftIndex < left.endIndex && rightIndex < right.endIndex {
        if left[leftIndex] < right[rightIndex] {
            results.append(left[leftIndex]);
            leftIndex = leftIndex + 1;
        }
        else {
            results.append(right[rightIndex]);
            rightIndex = rightIndex + 1;
        }
    }
    
    results.append(contentsOf: left[leftIndex..<left.endIndex]);
    results.append(contentsOf: right[rightIndex..<right.endIndex])
    
    return results;
}

var data: [Int] = [5,2,2,7,3,1,4,45,324,65,22,11,15,32,77,15,4]

var sorted = mergeSort(arr: data)

print(sorted)

