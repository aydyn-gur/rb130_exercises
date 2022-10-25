def missing(array)
  sorted_array = (array[0]..array[-1]).to_a
  
  array.each do |num|
    sorted_array.delete(num) if sorted_array.include?(num)
  end
  
  sorted_array
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
