import UIKit

/* Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]
Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]
*/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var indices: [Int] = []

    for (i, num) in nums.enumerated() {
        for j in i..<nums.count {
            if j != i && num + nums[j] == target {
                indices.append(i)
                indices.append(j)
            }
        }
    }

    return indices
}

print(twoSum([2, 7, 11, 15], 9))
print(twoSum([3, 2, 4], 6))
print(twoSum([3, 3], 6))
