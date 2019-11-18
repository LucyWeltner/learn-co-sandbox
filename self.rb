#self = the object that recieves the method 
#for example: 
class Dog 
  attr_accessor :name, :owner
  def initialize(name)
    @name = name 
  end
  def showing_self
    puts self #self can change. It refers to whichever object recieves the message
  end 
  def gets_adopted(owner_name)
    self.owner = owner_name
  end
end 

charlie = Dog.new("Charlie") 
charlie.showing_self #charlie recieves the method, so self = charlie, and charlie will print himself (the location in memory that stores data about charlie)

charlie.gets_adopted("Sophie") #again, self = charlie, so Sophie is assigned to be charlie's owner
p charlie.owner
