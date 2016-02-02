# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
  char_index = 0
  height = board.length
  road = []
  puts "word.length:#{word.length}"
  board.each_with_index do |n, i|
    n.each_with_index do |m, j|
      if board[i][j].to_s == word[char_index]
        puts "found first char:#{word[char_index]}, index #{i}, #{j}"
        temp_i, temp_j = i, j
        road << [temp_i, temp_j]
        while (target = word[char_index + 1] )!= nil
          puts "now target is #{target}"
          puts "roads: #{road}"
          # up
          if temp_i-1 >= 0 && (board[temp_i-1][temp_j].to_s == target) && !road.include?([temp_i-1,temp_j])
            char_index += 1
            temp_i -= 1
            road << [temp_i, temp_j]
            puts "found target in up #{temp_i}, #{temp_j}"
          # down
        elsif temp_i + 1 < height && board[temp_i+1][temp_j].to_s == target && !road.include?([temp_i+1,temp_j])
            char_index += 1
            temp_i += 1
            road << [temp_i, temp_j]
            puts "found target in down #{temp_i}, #{temp_j}"
          # left
        elsif temp_j > 0 && board[temp_i][temp_j-1].to_s == target && !road.include?([temp_i,temp_j-1])
            char_index += 1
            temp_j -= 1
            road << [temp_i, temp_j]
            puts "found target in left #{temp_i}, #{temp_j}"
          # right
        elsif board[temp_i][temp_j+1].to_s == target && !road.include?([temp_i,temp_j+1])
            char_index += 1
            temp_j += 1
            road << [temp_i, temp_j]
            puts "found target in right #{temp_i}, #{temp_j}"

          end
        end
        puts "result char_index: #{char_index+1}"
        if char_index + 1 == word.length
          return true
        else
          puts "Not Found target"
          puts ""
          char_index = 0
          road = []
        end
      end
    end
  end
  false
end

puts exist([["C","A","A"],["A","A","A"],["B","C","D"]],
"AAB")
