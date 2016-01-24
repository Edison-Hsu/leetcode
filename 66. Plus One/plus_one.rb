# @param {Integer[]} digits
# @return {Integer[]}
# Runtime	68 ms
def plus_one(digits)
    index = -1
    digits[index] += 1

    while digits[index] > 9
        digits[index] = 0
        index -= 1
        if digits[index].nil?
            digits.unshift(1)
            break
        end
        digits[index] +=1
    end

    digits
end
