# @param {Integer} k
# @param {Integer} n
# @return {Integer[][]}
# Your runtime beats 100.00% of rubysubmissions.
def combination_sum3(k, n)
    result = []
    (1..9).to_a.combination(k).each do |com|
        result << com if com.inject(:+) == n && !result.include?(com)
    end
    result
end
