# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
# runtime: 84 ms
def contains_nearby_duplicate(nums, k)
    hash = {}
    nums.each_with_index do |n,i|
        if hash[n].nil? || i - hash[n] > k
            hash[n] = i
        else
            return true
        end
    end
    false
end
