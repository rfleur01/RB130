def select(array)
  counter = 0
  new_array = []

  while counter < array.size
    new_array << array[counter] if yield(array[counter])
    counter += 1
  end

  new_array
end

array = [1, 2, 3, 4, 5]

puts select(array) { |num| num.odd? }      # => [1, 3, 5]
select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
puts select(array) { |num| num + 1 }