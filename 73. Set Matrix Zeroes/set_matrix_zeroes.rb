# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
# @Runtime: 168 ms, Your runtime beats 33.33% of ruby submissions.
def set_zeroes(matrix)
    zeroes = []
    matrix.each_with_index do |n,i|
        n.each_with_index do |m,j|
            zeroes << [i,j] if m == 0
        end
    end

    zeroes.each do |x,y|
        matrix[x].map! {|num| num = 0 }
        matrix.each { |row| row[y] = 0}
    end
end
