
#while true do
#  puts "write this forever..."
#end
#while 23 do #all numbers are truthy
#  puts "write this forever..."
#end

while nil do #nil is falsey
  "Never ever do this"
end 
count = -3
while count < 3 do
  puts "I am the number #{count}, I love to count!"
  count += 1
end

puts count *= count #multiplies count by itself
puts count /- count
puts count %= count #count = count%count, always 0

magic_exit_number = 7

while count < 10 do
  break if count == magic_exit_number
  puts "I am the number #{count} and I love to count!"
  count += 1
end 
#the same program but shorter:
count = 0
while count < 10 && count != magic_exit_number do
  puts "I am the number #{count} and I love to count!"
  count += 1
end 