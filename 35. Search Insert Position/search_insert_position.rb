# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    index = nums.bsearch do |i|
        i >= target
    end
    if index.nil?
        nums.length
    else
        nums.index(index)
    end
end
