# @param {Integer[]} nums
# @return {Integer[][]}
# @Your runtime beats 33.33% of ruby submissions.
def subsets_with_dup(nums)
    [].tap do |result|
        (0..nums.length).each do |i|
            nums.sort!.combination(i).each do |com|
                result << com unless result.include?(com)
            end
        end
    end

end
