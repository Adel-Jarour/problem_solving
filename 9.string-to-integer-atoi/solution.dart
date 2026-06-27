class Solution {
  int myAtoi(String text) {
    int i = 0;
    int length = text.length;
    int sign = 1;
    int result = 0;

    while (i < length && text[i] == ' ') {
      i++;
    }

    if (i < length && (text[i] == '+' || text[i] == '-')) {
      sign = text[i] == '-' ? -1 : 1;
      i++;
    }

    while (i < length &&
        text[i].codeUnitAt(0) >= '0'.codeUnitAt(0) &&
        text[i].codeUnitAt(0) <= '9'.codeUnitAt(0)) {
      int digit = text[i].codeUnitAt(0) - '0'.codeUnitAt(0);

      if (result > (2147483647 - digit) ~/ 10) {
        return sign == 1 ? 2147483647 : -2147483648;
      }

      result = result * 10 + digit;
      i++;
    }
    return result * sign;
  }
}

void main() {
  Solution solution = Solution();

  print(solution.myAtoi("42")); // 42
  print(solution.myAtoi("   -42")); // -42
  print(solution.myAtoi("4193 with words")); // 4193
  print(solution.myAtoi("words and 987")); // 0
}
