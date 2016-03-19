# @param {String} s
# @return {Boolean}
def is_valid(s)
    strim = s.gsub(/[^\[\]\(\)\{\}]/,'')
    return true if strim.empty?
    return false if strim.size.odd?
    loop do
        str = strim.gsub('()','').gsub('[]','').gsub('{}','')
        return true if str.empty?
        return false if str == strim
        strim = str
    end
end
