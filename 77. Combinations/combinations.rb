# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
# Your runtime beats 44.44% of rubysubmissions.
def combine(n, k)
    1.upto(n).to_a.combination(k).to_a
end
