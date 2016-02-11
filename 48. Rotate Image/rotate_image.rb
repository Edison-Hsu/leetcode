# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
# Your runtime beats 83.33% of ruby submissions.
def rotate(matrix)
    matrix_tmp = matrix.transpose
    matrix.each_with_index {|row, index| matrix[index] = matrix_tmp[index].reverse!}
end
