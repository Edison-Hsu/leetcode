# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    [].tap do |result|
      hash = {}
      nums.each_with_index do |n, i|
        if j = hash[target - n]
          return result << j + 1 << i + 1
        end
        hash[n] = i
      end
    end
end
