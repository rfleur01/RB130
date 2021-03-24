def zip(arr1, arr2)
  array = []
  arr1.each_with_index do |a, i|
    array << [arr1[i], arr2[i]]
  end
  array
end
p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]