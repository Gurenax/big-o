# O(log n)
# Reference: https://gist.github.com/aspyct/3433278
# Binary Search - Search a sorted array in O(lg(n)) time
def binary_search(array, value, from=0, to=nil)
  if to == nil
      to = array.count - 1
  end

  mid = (from + to) / 2

  if value < array[mid]
      return binary_search array, value, from, mid - 1
  elsif value > array[mid]
      return binary_search array, value, mid + 1, to
  else
      return mid
  end
end

# Binary search needs to be pre-sorted
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

puts "binary search"
offset_3 = binary_search a, 3
puts "3 is at offset #{offset_3} in a"

offset_15 = binary_search b, 15
puts "15 is at offset #{offset_15} in b"