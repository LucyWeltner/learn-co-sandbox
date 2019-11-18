
#runs 4 times
n = 4 
count = 0 
while count < n do
  count = count + 1
  puts "I ran #{count} times"
end 

#also runs 4 times.
4.times do
  puts "I ran."
end

#ALSO runs 4 times.
puts "\n"
count = 0
n = 4
loop do 
  break if count >= n
  puts "I ran."
  count += 1
end

puts "\n"

#loop with until...ALSO runs 4 times
count = 0
until count == 4
  puts "I ran."
  count = count + 1
end