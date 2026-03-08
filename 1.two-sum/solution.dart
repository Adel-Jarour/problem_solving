/*
the problem link:
https://leetcode.com/problems/two-sum
 */

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> map = {};

    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];

      if (map.containsKey(complement)) {
        return [map[complement]!, i];
      }
      map[nums[i]] = i;
    }
    return [];
  }
}

void main() {
  Solution solution = Solution();
  print(
    solution.twoSum([2, 3, 5, 8, 7], 8),
  );
}
