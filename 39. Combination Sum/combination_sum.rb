# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
# Your runtime beats 100% of rubysubmissions.
def combination_sum(candidates, target)
  result = []
  candidates.sort!
  backtracking(candidates, target, 0, [], result)
  result
end

def backtracking(array, target, index, path, result)
  return if target < 0
  return result << path if target == 0
  (index...array.length).each do |x|
    break if array[x] > target
    backtracking(array, target - array[x], x, path + [array[x]], result)
  end

end
  

