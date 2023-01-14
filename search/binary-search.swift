func binarySearchR(arr: [Int],
                  start: Int,
                  end: Int,
                  target: Int) -> Int
{
    if start > end {
        return -1;
    }
    
    var midIndex: Int = (start + end) / 2;
    
    if(arr[midIndex]) == target {
        return midIndex;
    }
    else if arr[midIndex]>target {
        return binarySearchR(arr: arr, start: start, end: midIndex-1, target: target)
    }
    else{
        return binarySearchR(arr: arr, start: midIndex+1, end: end, target: target)
    }
}

func binarySearch(arr: [Int],
                  start: Int,
                  end: Int,
                  target: Int) -> Int
{
    var low = start;
    var high = end;
    while(true)
    {
        if low > high {
            return -1;
        }
        var midIndex: Int = (low + high) / 2;
        if(arr[midIndex]) == target {
            return midIndex;
        }
        else if arr[midIndex]>target {
            high = midIndex-1;
        }
        else{
            low = midIndex+1;
        }
    }
}

func binarySearch(arr:[Int], target:Int, recursive:Bool = true) -> Int
{
    return recursive 
        ? binarySearchR(arr: arr,
                        start: arr.startIndex, 
                        end: arr.endIndex-1, 
                        target: target)
        : binarySearch(arr: arr,
                       start: arr.startIndex,
                       end: arr.endIndex-1,
                       target: target);
}

var data: [Int] = [Int](1...100000)

let index = binarySearch(arr: data, target: 5, recursive: true)

print(index)


