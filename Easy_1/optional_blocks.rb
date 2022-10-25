def compute(int)
  block_given? ? yield(int) : "Does not compute."
end

p compute(5) { |int| int + 3 } == 8
p compute('c') { |letter| 'a' + 'b' + letter } == 'abc'
p compute(5) == 'Does not compute.'
