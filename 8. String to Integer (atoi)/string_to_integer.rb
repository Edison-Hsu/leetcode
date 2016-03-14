# @param {String} str
# @return {Integer}
def my_atoi(str)
    i = str.to_i
    return 2147483647 if i > 2147483647
    return -2147483648 if i < -2147483648
    i
end
