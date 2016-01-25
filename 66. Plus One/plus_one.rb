# @param {Integer[]} digits
# @return {Integer[]}
# Runtime: 100 ms
def plus_one(digits)
    string = digits.join
    number = string.to_i + 1
    array = number.to_s.split('').map { |x| x.to_i }
end
