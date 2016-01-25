# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    count, index, val = 0, 0, nil

    nums.each do |n|
        if val != n
            count += 1
            val = n
            nums[index] = n
            index += 1
        end
    end

    return count
end
