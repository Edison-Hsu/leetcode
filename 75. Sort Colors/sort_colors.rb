# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
    x,y,z = -1, -1, -1
    nums.each do |n|
        if n == 0
            z += 1
            y += 1
            x += 1
            nums[z] = 2
            nums[y] = 1
            nums[x] = 0
        elsif n == 1
            z += 1
            y += 1
            nums[z] = 2
            nums[y] = 1
        else
            z += 1
            nums[z] = 2
        end
    end
end
