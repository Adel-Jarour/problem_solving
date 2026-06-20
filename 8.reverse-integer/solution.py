class Solution(object):
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """

        # 32-bit integer limits
        INT_MIN = -2**31
        INT_MAX = 2**31 - 1

        negative = False
        if x < 0:
            negative = True
            x=abs(x)
        
        nums = []
        for num in str(x):
            nums.append(int(num))
        
        reversed_num=''
        for i in range(len(nums) - 1, -1, -1):
            reversed_num += str(nums[i])

        reversed_num = int(reversed_num)
        if negative:
            reversed_num=reversed_num * -1
        
        # CHECK FOR 32-BIT OVERFLOW!
        if reversed_num < INT_MIN or reversed_num > INT_MAX:
            return 0
        
        return reversed_num

sol = Solution()
print(sol.reverse(-1534236469))