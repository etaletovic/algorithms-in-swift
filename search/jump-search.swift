
let data = [1,2,3,5,6,8,10,12,15,18,20,21,22,32,42,52,62,72,90];

func jumpSearch(arr: [Int], blockSize: Int, target: Int) -> Int {
    var low = 0
    var high = blockSize - 1
    
    // Jump forward until element larger than target is found or until jumped ahead of array count
    while(high < arr.count && arr[high] <= target) {
        low = high
        high = high + blockSize
    }
    
    if high >= arr.count {
        high = arr.count - 1
    }
    
    return linearSearch(arr: data, low: low, high: high, target: target)
}

func linearSearch(arr: [Int], low: Int, high:Int, target: Int) -> Int
{
    for i in low ... high {
        if arr[i] == target {
            return i;
        }
    }
    return -1;
}

print("Index: \(jumpSearch(arr: data, blockSize: 3, target: 10))");

