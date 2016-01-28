# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
# Runtime: 72 ms
def merge(nums1, m, nums2, n)
    tmp_nums = Array.new(nums1[0,m])
    curr_tmp_nums, curr_nums1, curr_nums2 = 0, 0, 0
    
    (0...m+n).each do |n|
        if  nums2[curr_nums2].nil? || (tmp_nums[curr_tmp_nums] && tmp_nums[curr_tmp_nums] <= nums2[curr_nums2])
            number = tmp_nums[curr_tmp_nums]
            curr_tmp_nums += 1
        elsif tmp_nums[curr_tmp_nums].nil? || tmp_nums[curr_tmp_nums] > nums2[curr_nums2]
            number = nums2[curr_nums2]
            curr_nums2 += 1
        end
        nums1[curr_nums1] = number
        curr_nums1 += 1
    end
end
