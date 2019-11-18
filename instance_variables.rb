#variables preceeded by @ are instance variables. They belong to instances of classes
#two different instances can assign the same variable name to a different value. For example, if we create two new dogs, both have a variable @name. But we can assign one dog's name to be fido (Dog.new.name = fido) and the other dog's name to be rover (Dog.new.name = fido) because each doggo can store different info in its "@name" variable.
#instance variables dogs have can be accessed whenever you call a method on a dog
class Dog
  def name=(dogname)#setter - a method which allows you to set @name equal to a value
    @name = dogname
  end
  def name #getting - a method which accesses and returns whatever @name is set to
    @name
  end
end

fifi = Dog.new #fifi gets a variable @name but it equals nil
p fifi.name 
fifi.name="Fifi" #fifi calls "setter" and assigns @name to "Fifi"
p fifi.name #fifi calls "getter"
#or we can set the dog's name like this, but it relies on us never changing the name of the variable @name:
fifi.instance_variable_set(:@name, "Fifi!")
p fifi.instance_variable_get(:@name) #:@name uses the send method to invoke a setter function

#let's make it so we set a dog's name every time we create a new dog! 
#.new calls the initialize method - let's add to initialize method to make it assign a name as well
class Dog_improved
  def initialize(dogname)
    @name = dogname
  end 
  def name #getting - a method which accesses and returns whatever @name is set to
    @name
  end
end

rufus = Dog_improved.new("Rufus") #We tell the Dog class to create a new dog and set its @name variable equal to Rufus
p rufus.name

#however, if we do this, we can't reset Rufus' name, because we have no setter method we can call. We can easily add a setter method though
def name=(new_name)
  @name = new_name
end
#note: we'd need to define this inside the dog class to get it to work