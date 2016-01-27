# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    zero_count = 0
    curr = 0
    nums.each do |n|
        if n != 0
            nums[curr] = n
            curr += 1
        else
            zero_count += 1
        end
    end
    
    zero_count.times.each { |n| nums[curr] = 0; curr += 1 }
end
