def compute
  return 'Does not compute.' unless block_given?
  yield
end

puts compute { 5 + 3 } #== 8
puts compute { 'a' + 'b' } #== 'ab'
puts compute #== 'Does not compute.'