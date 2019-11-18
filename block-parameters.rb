#block parameters are variables automatically created when you run a method. They store some data related to the method. You can name (and access) these variables by typing | | around the name you want to assign them. 
#the block parameter associated with .times stores the number of times the loop has run thusfar
#we use it to loop over an array
array = ["a","b","c","d"]
 string = ""
#we name our block parameter index
array.length.times do |index|
  string = string + array[index]
end
p string #returns "abcd"
