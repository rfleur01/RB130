def times(number)
  counter = 0

  loop do
    yield(counter)
    counter +=1
    break if counter == 5
  end
  number
end

times(5) do |num|
  puts num
end