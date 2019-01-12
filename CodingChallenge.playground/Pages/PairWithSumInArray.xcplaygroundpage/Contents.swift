
let inputArr = [12, 1, -2, 34, 9, 10]
let targetSum = 10

var headPointer = 0
var tailPointer = inputArr.count - 1

func pairToSum(array: [Int], targetSum: Int) {
    while headPointer < tailPointer {
        let sum = array[headPointer] + array[tailPointer]
        if sum == targetSum {
            // We got our pair
            print("Pair is: \(array[headPointer]) and \(array[tailPointer])")
            headPointer += 1
            tailPointer -= 1
        }
        else if sum < targetSum {
            // This situation depicts that you need to look for a larger sum, and increase in headPointer will help here
            headPointer += 1
        }
        else {
            // This situation tells you that you need ot look for a pair with smaller sum
            tailPointer -= 1
        }
    }
}

let sortedArr = inputArr.sorted()
print("sortedArr: \(sortedArr)")
pairToSum(array: sortedArr, targetSum: 10)
