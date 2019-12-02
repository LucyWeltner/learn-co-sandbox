#a method that returns nil, because the last line includes a puts statement
def a_method(a,b)
  puts "I got #{a}"
  puts "I got #{b}"
  sum = a + b
  puts "I got #{sum}"
end
 
a_method(2,3)

#Now the method returns the sum
def a_method_fixed(a,b)
  puts "I got #{a}"
  puts "I got #{b}"
  puts "I got #{a+b}"
  a + b
end

sum = a_method_fixed(2.0,3.0)
#the return value of the method is 5, so puts sum will write 5
puts sum
puts (sumsum = sum+sum)

#return ends the method 
def a_method_interrupted(a,b)
  puts "I got #{a}"
  puts "I got #{b}"
  return a+b
  puts "I got #{a+b}"
end

#only executes code before the return statement
a_method_interrupted(4,5)



require "open-uri"
require "nokogiri"

class Scraper
  self.scrape_from_youtube(link)
    html = Nokogiri::HTML(open(https://www.youtube.com/watch?v=rLCwc_nrimk&list=PLP4CSgl7K7or84AAhr7zlLNpghEnKWu2c&index=1))
    p html.css("#description").text
  end
end
    
Scraper.scrape_from_youtube("https://www.youtube.com/watch?v=rLCwc_nrimk&list=PLP4CSgl7K7or84AAhr7zlLNpghEnKWu2c&index=1")