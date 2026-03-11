# The problem link:
# https://leetcode.com/problems/palindrome-number

def isPalindrome(x):
    if x < 0:
        return False
    s = str(x)
    reversed_s = ''.join(reversed(s))
    return s == reversed_s

print(isPalindrome(x=121))
print(isPalindrome(x=-121))