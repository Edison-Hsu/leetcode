class NumArray

    # Initialize your data structure here.
    # @param {Integer[]} nums
    def initialize(nums)
        @sums, @nums = [], nums
        sum = 0
        nums.each do |n|
            sum = sum + n
            @sums << sum
        end
    end

    # @param {Integer} i
    # @param {Integer} j
    # @return {Integer}
    def sum_range(i, j)
        @sums[j] - @sums[i] + @nums[i]
    end
end

# Your NumArray object will be instantiated and called as such:
# num_array = NumArray.new(nums)
# num_array.sum_range(0, 1)
# num_array.sum_range(0, 2)
