# @param {Integer[]} digits
# @return {Integer[]}

# Runtime: 100 ms
def plus_one(digits)
    string = digits.join
    number = string.to_i + 1
    array = number.to_s.split('').map { |x| x.to_i }
end

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
