# @param {Integer[]} nums
# @return {Integer[]}
# 摩尔投票算法
# Your runtime beats 44.44% of rubysubmissions.
def majority_element(nums)
    m,n = nil, nil
    cm, cn = 0, 0
    nums.each do |x|
        if m == x
            cm += 1
        elsif n == x
            cn += 1
        elsif cm == 0
            m = x
            cm += 1
        elsif cn == 0
            n = x
            cn += 1
        else
            cm -= 1
            cn -= 1
        end
    end

    cm, cn = 0, 0
    nums.each do |x|
        cm += 1 if x == m
        cn += 1 if x == n
    end

    result = []
    result << m if cm > nums.length / 3
    result << n if cn > nums.length / 3

    result
end
