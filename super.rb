#object inheritance: if you want class A to be able to access all the methods/variables contained in class B, we write Class A < Class B 
#This means, "Class A is a subset of Class B"


"This gem uses data from Anthony Fantano's most recent "Track Roundup" video to display recently released songs. The gem can show you all the songs released last week, lets you search the list of songs (by title or by author), and lets you play the songs by opening web pages from the command line."

 def self.search_by_artist(an_artist)
    found = self.all.select{|song| song.artist.downcase == an_artist.downcase}
  end 
  
  def self.search 
    puts "Search for a song by typing the title or artist."
    input = gets.chomp!
    if search_by_artist(input)
      results = search_by_artist(input)
      #iterate through the array to show each result
      if results.length > 1
        puts "There are #{results.length} songs that match your query:"
        results.each_with_index do |song, index|
          puts "#{index+1}. #{song.title} by #{song.artist}. Listen at #{song.url}"
        end
        puts "Would you like to listen to any of these songs? Press the number corresponding to the song you'd like to listen to."
        listen = gets.chomp!.to_i
        if listen > 0 && listen < results.length + 1 
          results[listen - 1].listen_to_song
        end
      #if there is only one result, show only that result
      else 
        puts "The song that matches your query is #{results[0].title} by #{results[0].artist} which you can listen to at #{results[0].url}."
        results[0].listen_query
      end 
    elsif search_by_title(input)
      song = search_by_title(input)
      puts "The song that matches your query is #{song.title} by #{song.artist} which you can listen to at #{song.url}"
    else 
      puts "Sorry, there are no results that match your query. Please check your spelling and try again."
    end 
  end 
  
  def listen_query
    puts "Would you like to listen to this song? Press y if yes."
    listen = gets.chomp!.downcase
    if listen == "y"
      self.listen_to_song
    end
  end 