# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    return false if s.length != t.length
    sha, tha = {}, {}
    0.upto(s.length) do |i|
        return false if sha[s[i]] != tha[t[i]]
        sha[s[i]], tha[t[i]] = i, i
    end
    true
end
