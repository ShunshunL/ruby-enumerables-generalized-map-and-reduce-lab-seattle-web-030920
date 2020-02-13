# Your Code Here
require 'pp'
def map(source_array)
  index = 0 
  new_array = []
  while index < source_array.length 
    new_array << yield(source_array[index])
    index += 1 
  end
  new_array
end

def reduce(source_array, starting_point = nil)
  index = 0 
  return_value = 0 
  while index < source_array.length
    return_value += yield(source_array[index] + source_array[index + 1])
    index += 2
  end 
  return starting_point + return_value
end 