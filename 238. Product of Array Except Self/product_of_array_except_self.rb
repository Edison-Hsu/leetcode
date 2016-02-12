# @param {Integer[]} nums
# @return {Integer[]}
# Your runtime beats 52.63% of ruby submissions.
def product_except_self(nums)
    [].tap do |result|
        product = 1
        length = 0
        nums.each_with_index do |n,i|
            if i == 0
                result << 1
            else
                product *= nums[i-1]
                result << product
            end
            length += 1
        end

        rproduct = 1
        (0...length).reverse_each do |i|
            if i == length - 1
                rproduct = 1
            else
                rproduct = rproduct * nums[i + 1]
            end
            result[i] *= rproduct
        end
    end
end
