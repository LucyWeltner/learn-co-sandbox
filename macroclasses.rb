#macros are methods that write code (usually, a method that writes a method)
#the macro attr_accessor will write getter and setter methods for us, given an argument
class Person
  def name=(name)
    @name = name 
  end 
  def name
    @name 
  end 
end 

#all of this code will be written for us by this line of "meta" code:
class Person 
  attr_accessor :name
end 

#Does macro code work by calling send?