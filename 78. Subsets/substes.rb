# @param {Integer[]} nums
# @return {Integer[][]}
# @Your runtime beats 14.29% of ruby submissions.
def subsets(nums)
    result = []
    (0..nums.length).each do |n|
        nums.sort.combination(n).each { |x| result << x}
    end
    result
end
