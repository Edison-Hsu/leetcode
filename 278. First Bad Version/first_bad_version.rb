# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):
# Your runtime beats 75.00% of rubysubmissions.
# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
    (1..n).bsearch {|x| is_bad_version(x) }
end
