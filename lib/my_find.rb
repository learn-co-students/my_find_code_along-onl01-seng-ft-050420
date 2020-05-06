require 'pry'

collection = (1..100).to_a


def my_find(collection)
  i = 0 
  while i < collection.length 
    if yield(collection[i])
      return collection[i]
    end 
    i += 1 
  end 
end 

binding.pry 
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }

#why does this stop at the first true instance?