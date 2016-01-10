
    ROMAN_NUMBERS = {
    1000 => "M",
     900 => "CM",
     500 => "D",
     400 => "CD",
     100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I",
    }
# @param {String} s
# @return {Integer}
def roman_to_int(s)
    sum = 0
    i = 0
    roman_values = ROMAN_NUMBERS.values
    cur_val = 0
    until i > s.length
      found = false
      roman_values[cur_val..-1].each do |v|
        if s[i..-1].start_with?(v)
            sum += ROMAN_NUMBERS.key(v)
            i += v.length
            found = true
            break
        end
      end
      if found == false
          i += 1
          cur_val += 1
      end
    end
    sum
end
