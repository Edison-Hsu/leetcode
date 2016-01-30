# @param {Integer} num_rows
# @return {Integer[][]}
# @Runtime: 68 ms
def generate(num_rows)
    arr = []
    num_rows.times.each do |n|
        arr[n] = Array.new(n+1) do |i|
            if n > 1 && i > 0 && i < n
                arr[n-1][i-1] + arr[n-1][i]
            else
                1
            end
        end
    end
    arr
end
