#When you use keyword arguments, you initialize an object by passing in a hash. You access the keys in the hash and assign them to instance variables like this:
class User
  attr_accessor :name, :age, :location, :user_name #The symbols in your accessor must match the keys of the hash
 
  def initialize(user_name:, name:, age:, location:) #gets the user_name, name, age and location keys from the hash you pass in
    @user_name = user_name
    @name = name
    @location = location
    @age = age
  end
end

#The problem with this implementation is that if the keys of the hash change, you need to change several lines in the initialization method. 
#To avoid this issue, we cycle through the hash and assign each key to an instance variable using send.
#We still need to make sure the accessor makes setter and getter methods for each key of the hash 

class User
  attr_accessor :name, :age, :location, :user_name #The symbols in your accessor must match the keys of the hash
 
  def initialize(user_hash)
    user_hash.each do |key, value| 
      self.send(("#{key}="), value) #send gets the "setter" method we defined in our accessor that has the same name as the key. Then, it turns in the value associated with that key in as an argument.
    end
  end
end
