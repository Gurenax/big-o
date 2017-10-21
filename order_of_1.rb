# Order of 1
# This function is called O(1) which is called "constant time". What this means is no matter how big our input is, it always takes the same amount of time to compute things.
def is_none(item)
  return item if item == "none"
end

puts is_none("none")  # will return "none"
puts is_none("not none") # will return nothing
