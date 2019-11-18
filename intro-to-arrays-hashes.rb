the_beatles = ["John Lennon", "Paul McCartney", "Ringo Starr", "George Harrison"]
#get second element in the array 
puts the_beatles[1];
#returns and prints last element in the array
p the_beatles[the_beatles.length - 1]
#hash = array but symbols (or strings) let us access the elements, instead of integers
english_bands_by_city = { :liverpool => "The Beatles", :manchester => "The Smiths", :coventry =>"Delia Derbyshire and the BBC Radiophonic Band", :london => "Ziggy Stardust and the Spiders from Mars"}
#returns and prints The Smiths
p english_bands_by_city[:manchester]
#the symbol manchester is the "key" which lets us access The Smiths. We say The Smith's is the "key value" of manchester.
#A hash of hashes:
english_music_by_city = {:manchester => [
  { :band_name => "The Smiths", :member_names => ["Morrisey", "Johnny", "Andy", "Mike"]}, {:band_name => "Joy Division", :member_names => ["Peter", "Stephen", "Bernard", "Ian"]}]}
  #english_music_by_city[:manchester[1]][:band_name]
  #create an array using the array class constructor
  my_array = Array.new 
  #push things onto the end of the array we just created
  my_array += [23, "otter bird"]
  p my_array
  #Or use the method push to accomplish the same goal
  my_array.push("shredded in your motion lines")
  p my_array
  #Or use the "shovel" operator, which is equivalent to .[push]
  my_array << ["Stratego", "Pink Floyd"]
  p my_array
  #Use unshift to add an element to the beginning of an array
  