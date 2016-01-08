# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  result = []
  len = nums.length
  puts len

  nums.each_index do |i|
    puts "i: #{i}"
    break if i > len - 2
    (i+1...len).each do |j|
      puts j
      two_sum = nums[i] + nums[j]
      wanted = 0 - two_sum
      new_nums = nums.clone
      puts "origin array #{new_nums}"
      new_nums.delete_at(j)
      puts "now array: #{new_nums}"
      new_nums.delete_at(i)
      puts "wanted: #{wanted}, i'm #{nums[i]} and #{nums[j]}"
      puts "now array: #{new_nums}"
      if new_nums.include?(wanted)
        puts 'enter new nums'
        arr = [nums[i], nums[j], wanted].sort
        result << arr
      else
        next
      end
    end
  end
  result.uniq
end

# main test
if __FILE__ == $0
  a = [2,4,12,3,5,76,65,3,-1,-3,-5,-7]
  r = three_sum(a)
  puts "#{r}"
  r
end
