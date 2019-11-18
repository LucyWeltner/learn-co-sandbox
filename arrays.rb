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
  my_array.unshift("Do you prefer Ashley or Mary Kate?")
  p my_array
  #use .shift to remove an element from the beginning of an array. Shift takes the element out of the array and returns it 
  #this will print/return the first element of the array, then remove it
  p my_array.shift()
  p my_array
  #delete an element at a certain index
  my_array.delete_at(2)
  p my_array
  #Use insert to add elements to the middle of an array - the first argument is the index
  my_array.insert(2, "shredded in your motion lines")
  p my_array
  #the last item of an array is at index -1
  p my_array[-1]
  #index method takes in an element and returns the index that element
  p my_array.index("shredded in your motion lines")
  