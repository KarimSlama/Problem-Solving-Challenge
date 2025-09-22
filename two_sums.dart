// Time Complexity: O(n)
// Space Complexity: O(n)

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numToIndex = {};
    for (int i = 0; i < nums.length; i++) {
      final compelent = target - nums[i];
      if (numToIndex.containsKey(compelent))
        return [numToIndex[compelent]!, i];
      else
        numToIndex[nums[i]] = i;
    }
    return [];
  }
}

void main() {
  final solution = Solution();
  final nums = [2, 7, 11, 13, 15];
  final target = 13;
  final result = solution.twoSum(nums, target);
  print(result); // Output: [0, 2]
}
