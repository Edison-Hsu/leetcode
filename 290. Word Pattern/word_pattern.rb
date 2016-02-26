# @param {String} pattern
# @param {String} str
# @return {Boolean}
# Your runtime beats 80.00% of rubysubmissions.
def word_pattern(pattern, str)
    hash1, hash2 = {}, {}
    length = 0

    str.split(' ').each_with_index do |w, i|
        length += 1

        key = pattern[i]
        value = hash1[key]
        if value.nil? && hash2[w].nil?
            hash1[key] = w
            hash2[w] = key
        else
            return false if w != value
        end
    end

    return false if length != pattern.length

    return true
end
