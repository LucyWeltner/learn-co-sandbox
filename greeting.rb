def greeting
  puts "Hello, world"
end

greeting

def five_greetings
  5.times do
    greeting
  end
end

puts "\n"

five_greetings

answer = "flamboyance"
p "A group of flamingos is called a #{answer}"