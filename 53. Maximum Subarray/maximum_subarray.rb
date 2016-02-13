# @param {Integer[]} nums
# @return {Integer}
# Your runtime beats 45.45% of ruby submissions.
def max_sub_array(nums)
    return 0 if nums.nil? || nums.empty?
    local = nums[0]
    global = nums[0]
    nums[1..-1].each do |n|
        local = [local+n, n].max
        global = [local, global].max
    end
    global
end
