def step(starting_value, last_value, step_value)
  loop do 
    yield(starting_value)
    starting_value += step_value
    break if starting_value > last_value
  end
  starting_value
end

step(1, 10, 3) { |value| puts "value = #{value}" }
