# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
# Your runtime beats 66.67% of rubysubmissions.
def combination_sum2(candidates, target)
    result = []
    candidates.sort!
    backtracking(candidates, target, 0, [], result)
    result
end

def backtracking(ary, target, index, path, result)
    return if target < 0
    result << path if target == 0 && !result.include?(path)
    (index...ary.length).each do |x|
        break if ary[x] > target
        backtracking(ary, target-ary[x], x+1, path+[ary[x]], result)
    end
end
