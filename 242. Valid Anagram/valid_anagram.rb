# @param {String} s
# @param {String} t
# @return {Boolean}
# Your runtime beats 90.14% of rubysubmissions.
def is_anagram(s, t)
    counter(s) == counter(t)
end

def counter(str)
    {}.tap do |hash|
        str.each_char do |c|
            if hash[c].nil?
                hash[c] = 0
            else
                hash[c] += 1
            end
        end
    end
end
