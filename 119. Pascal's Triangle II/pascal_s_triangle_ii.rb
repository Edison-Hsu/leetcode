# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    arr = []
    (row_index+1).times.each do |n|
        arr[n] = Array.new(n+1) do |i|
            if n > 1 && i > 0 && i < n
                arr[n-1][i-1] + arr[n-1][i]
            else
                1
            end
        end
    end
    arr[row_index]
end
