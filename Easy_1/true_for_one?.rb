def one?(collection)
  true_values = []
  collection.each do |value|
    true_values << value if yield(value)
    return false if true_values.count > 1
  end
  true_values.count == 1 ? true : false
end

# def one?(collection)
#   seen_one = false
#   collection.each do |element|
#     next unless yield(element)
#     return false if seen_one
#     seen_one = true
#   end
#   seen_one
# end

p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |value| true }           # -> false
p one?([1, 3, 5, 7]) { |value| false }          # -> false
p one?([]) { |value| true }                     # -> false
