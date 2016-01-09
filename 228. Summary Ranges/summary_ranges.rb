# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  ranges = []
  if nums.length == 0 # #length fast then #count, #size is an alias of length
    return ranges
  end
  
  if nums.length == 1
     return [nums[0].to_s]
  end

  range_start = nums[0]
  nums.each_index do |i|
    if nums[i] + 1 != nums[i+1]
      if nums[i] == range_start
        ranges << nums[i].to_s
      elsif
        range = "#{range_start}->#{nums[i]}"
        ranges << range
      end
      range_start = nums[i+1]
    end
  end
  
  ranges
end
