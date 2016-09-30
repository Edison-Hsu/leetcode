# @param {Integer} x
# # @return {Integer}
def reverse(x)
  ss = 0
  if x < 0
    ss = "-#{(x*-1).to_s.reverse}".to_i
  else
    ss = x.to_s.reverse.to_i
  end

  return 0 unless (ss < 2**31) && (-2**31 < ss)
  ss
end
