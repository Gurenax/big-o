# Order of n - Linear complexity
# We loop over each thing in the list and if we find the first argument to our function, return True. If we get to the end and we didn't find it, return False.
def item_in_list(to_check, the_list)
  the_list.each { |item|
    if to_check == item
      return true
    end
  }
  false
end

puts item_in_list(3, [1,2,3]) # will return true
puts item_in_list(4, [1,2,3]) # will return false