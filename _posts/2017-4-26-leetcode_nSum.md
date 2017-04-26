---
category: leetcode
title: 'nSum in leetcode'


---

## What is nSum problem？

nSum problem 是在leetcode的数组类（Array）算法中比较靠前的题目，很适合用来理解：
1. 数组的排序

在从2Sum到nSum的解题过程中，2Sum的思想是Map键值对的逆用，将数组的值作为键，标号作为值，然后在便利的过程中建立一个map，每次加入元素前，对已有的map进行查找，一次遍历，N，每次都在map查找，logN，最后复杂度就是NlogN，巧妙。

2. 递归的思想

3Sum以后的题目都是可以用通用算法nSum来做。问题是要问，在一个数组nums[Max]里有没有可以相加为target的N个数。这个问题可以归约为，在一个数组nums[1:Max]中，有没有可以相加为（target－nums[0]）的（N－1）个数。再向下归约为，在数组nums[k:Max]中，有没有可以相加为（target－nums[0]－nums[k]）的N－2个数。。。。。。
最后就是归纳为，nSum(N，nums[N])＝nSum(N-k,nums[N-k])+nums[0]+nums[1]...nums[k-1]
当N＝k时，可以使用两个指针从头到为进行扫描。

## 附上代码：


```
    class Solution(object):
    def twoSum(self, nums, target):
        results = []
        if len(nums)< 2:
            return []
        i, j = 0, len(nums)-1
        while i < j:
            result = []
            tempSum = nums[i]+ nums[j] - target
            if tempSum > 0:
                j = j - 1
            elif tempSum < 0:
                i = i + 1
            else:
                result.append(nums[i])
                result.append(nums[j])
                results.append(result)
                del result
                j = j - 1; i = i + 1
                while i < j and nums[i] == nums[i-1]:
                    i = i + 1
                while i < j and nums[j] == nums[j+1]:
                    j = j - 1
        return results

    def nSum(self, N, nums, target):

        if N < 2:
            return []
        if N == 2:
            return self.twoSum(nums,target)
        if N > 2:
            l,r = 0, len(nums)- N + 1
            results = []
            result = []
            while l < r:
                while l > 0 and nums[l] == nums[l-1]:
                    l = l+1
                result = self.nSum(N-1, nums[l+1:],target - nums[l])
                num = len(result)
                if num == 0:
                    result = []
                else:
                    for x in xrange(len(result)):
                        result[x].append(nums[l])
                    results = results+result
                l = l + 1
        return results

    def fourSum(self, nums, target):
        nums.sort()
        result = self.nSum(4, nums, target)
        return result

```
