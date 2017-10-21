# O(n^2)
# This matches every item in the list with every other item in the list.
def all_combinations(the_list)
  results = []
  the_list.each { |item|
    the_list.each { |inner_item|
      results << [item, inner_item]
    }
  }
  results
end

p all_combinations([1,2,3]) # returns [(1,1) (1,2), (1,3), (2, 1), (2, 2), (2, 3), (3, 1), (3, 2), (3, 3)]