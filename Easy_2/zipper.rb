def zip(arr1, arr2)
  new_array = []
  
  arr1.each_with_index do |num, idx|
    new_array << [num, arr2[idx]]
  end
  
  new_array
end

p zip([1, 2, 3], [4, 5, 6]) #== [[1, 4], [2, 5], [3, 6]]
