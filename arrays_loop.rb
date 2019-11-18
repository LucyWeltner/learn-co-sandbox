jams = ["peach", "pear", "plum", "cherry", "apricot", "mayapple", "apple"]
index = 0
#this will run until jams[index] = nil, because nil is a "falsey" value (while all strings are "truthy" values)
while jams[index] do
  puts jams[index]
  index += 1
end
#a method that prints elements of arrays 
def print_element(array)
  index = 0
  while index < array.length do
    puts array[index]
    index += 1
  end
end
puts "\n"
print_element(jams)