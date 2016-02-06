# @param {Integer[]} nums
# @return {Integer}
# Your runtime beats 43.75% of ruby submissions.
def missing_number(nums)
    nums.sort!
    (0...nums.size).bsearch {|x| x != nums[x] } || nums.size
end
