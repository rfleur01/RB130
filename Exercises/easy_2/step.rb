def step(first, last, step)
  loop do
    yield(first)
    break if first == last
    first += step
  end
  first
end
p step(1, 10, 3) { |value| puts "value = #{value}" }
