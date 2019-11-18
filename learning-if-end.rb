#run_code_inside = false
#puts "Code Before If...End"
#if run_code_inside
#puts "Code inside"
#end
#puts "Code after if...end"

chance_of_rain = -23 
puts "Let's go outside! "
if chance_of_rain < 0.25
  puts "Pack a sun hat!"
elsif (chance_of_rain >= 0.25 && chance_of_rain < 0.75)
  puts "Pack an umbrella!"
else 
  puts "Stay home and read Hegel."
end
puts " And always wear sunscreen!"

puts "You know what year it is?"
this_year = Time.now.year
puts "Hey, it's 2019!" if this_year == 2019
puts "Hey, it's NOT 2019!" unless this_year == 2019