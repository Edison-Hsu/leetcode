# @param {Integer[]} height
# @return {Integer}
# Your runtime beats 70.00% of ruby submissions.
def max_area(height)
    w = height.length
    return 0 if w < 2
    lo, hi = 0, w-1
    max_area = 0
    while lo < hi do
        lo_max, hi_max = height[lo], height[hi]

        local = (hi - lo) * ( lo_max < hi_max ? lo_max : hi_max)
        max_area = max_area > local ? max_area : local

        if lo_max < hi_max
            while lo < w-1 && (height[lo] <= lo_max) do lo += 1 end
        else
            while hi > 0 && (height[hi] <= hi_max) do hi -= 1 end
        end

    end

    max_area
end
