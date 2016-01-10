# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.delete(val)
    nums.length
end
