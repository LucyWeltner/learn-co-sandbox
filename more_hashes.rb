fruits_to_buy = {:apples => 10, :pears => 4, :peaches => 2, :plums => 13}
#the statement fruits_to_buy[rambutans] returns nil which is "Falsey"
if fruits_to_buy[:rambutans]
  puts "We need rambutans!"
else 
  puts "We don't need rambutans"
end
#the fetch command lets you return something besides nil when the value is not in your hash. In this case if rambutans is not in the hash, it returns "no rambutans" instead of nil.
NewReturn = fruits_to_buy.fetch(:rambutan) {"No rambutans"}
puts NewReturn


#equivalent symbols are stored in the same place in the computer's memory
#for the computer, if a symbol looks the same as another symbol, it is the same
#these are the same
p :symbolic.object_id
p :symbolic.object_id
#every new string is stored in a different place in memory, even if it's identical to an already defined string
#these are different
p "this is a string".object_id
p "this is a string".object_id

#you cannot change symbols
#even though the symbol name is associated with two different values (one in each array) it still occupies just one location in memory
dog_one = {:name => "Luca", :breed => "German Shepherd"}
dog_two = {:name => "Lola", :breed => "Giant Schnauzer"}
p :name.object_id

#adding a new value changes the value associated with the key
dog_one = {:name => "Luca", :breed => "German Shepherd", :name => "Lucas"}
#now the value associated with name is Lucas
p dog_one[:name]

#alternate hash formatting - only works if keys are symbols
dog_one = {name: "Luca", breed: "German Shepherd"}