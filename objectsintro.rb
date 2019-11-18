#methods = messages objects = receivers 
#we send messages to objects, which receive and act on the messages using the syntax receiver.message
class Dog
  @@doggos = []
  def initialize
    @@doggos << self
  end
  def self.show_doggos
    p @@doggos 
  end
  def bark
    puts "Woofwoof"
  end
end 

fido = Dog.new #sending the message new to the class dog. New is a method that exists inside the Class object.
fido.object_id #fido receives the message object_id and gets its object id.
fido.bark #fido receives the message bark and barks.
Dog.show_doggos #the Dogs class recieves the message and shows the doggos.
fido.methods #returns all the methods Fido will respond to.
