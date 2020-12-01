# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  res = []

  # the structure of this table is { num: indice }
  # where num is nums[num] and indice is the index of num in nums
  # e.g:
  # nums = [8,5,9]
  # table = {8:0, 5:1, 9:3}
  hash_table = {}

  # iterate the nums array with indices
  nums.each_with_index do |num, i|
      # subtract current num inside nums to get the reminder
      v = target - num
      # exit the loop if hash_table contains the reminder
      # res as the return value with current index and the reminder index in nums
      # e.g:
      # target = 9
      # nums = [5,4,2,1]
      # when i = 0
      # then v = 4
      # then look for key(4) in hash_table
      if hash_table.key?(v)
        # if 4 is found in the hash_table, exit the loop with current index and the value for key
        return res.append(i, nums.index(v))
      else
        # add the num and index to the hash_table, e.g: {5:0}
        hash_table[num] = i
      end
  end
end

# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

 

# Example 1:

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Output: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:

# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:

# Input: nums = [3,3], target = 6
# Output: [0,1]
 

# Constraints:

# 2 <= nums.length <= 103
# -109 <= nums[i] <= 109
# -109 <= target <= 109
# Only one valid answer exists.