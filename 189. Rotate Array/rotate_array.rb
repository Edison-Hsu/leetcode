# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    k.times.each do |n|
        item = nums.pop
        nums.unshift item
    end
end
