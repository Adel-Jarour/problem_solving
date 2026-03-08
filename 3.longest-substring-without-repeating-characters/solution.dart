/*
the problem link:
https://leetcode.com/problems/longest-substring-without-repeating-characters
 */

class Solution {
  int lengthOfLongestSubstring(String s) {
    int n = s.length;
    int maxLength = 0;
    Map<String, int> lastSeen = {};
    int start = 0;

    for (int i = 0; i < n; i++) {
      String ch = s[i];
      if (lastSeen.containsKey(ch) && lastSeen[ch]! >= start) {
        start = lastSeen[ch]! + 1;
      }
      maxLength = maxLength < (i - start + 1) ? (i - start + 1) : maxLength;
      lastSeen[ch] = i;
    }

    return maxLength;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.lengthOfLongestSubstring('aavbbas'));
}
