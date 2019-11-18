def greeting_a_person(name)
  puts "Hello, #{name}"
end

greeting_a_person("Eli")

greeting_a_person("Lucy")

greeting_a_person("Sandy")

#provides a default greeting (hello, friend) if we don't know someone's name
def greeting_a_person_new(name = 'friend')
  puts "Hello, #{name}!"
end

greeting_a_person_new

def greeting_programmer(name, language = computer)
  puts "Hello, #{name}, we heard you are a great #{language} programmer."
end 

greeting_programmer("Eli", "Ruby")
