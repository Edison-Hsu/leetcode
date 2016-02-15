# Your runtime beats 28.57% of ruby submissions.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    i,j  = nums.index(target), nums.rindex(target)
    j.nil? || i.nil? ? [-1, -1] : [i,j]
end
