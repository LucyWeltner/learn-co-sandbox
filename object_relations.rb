#classes of objects that interact with other classes of objects, ie they have a method that takes in another class of object 
#the "Belongs To" relationship - we want each song by an artist to "belong to" that artist
class Song 
  attr_accessor :title, :artist 
  
  def initialize(title)
    @title = title 
  end
end

#So, we create an artist class 

class Artist
  attr_accessor :name, :genres 
  
  def initialize(name, genre)
    @name = name 
    @genres = [genre]
  end
  
  def evolve(genre)
    @genres << genre
    @genres = @genres.flatten
  end 
end

#Now we can assign the instance variable "artist" to an Artist object

drake = Artist.new("Drake", "Rap")
hotline_bling = Song.new("Hotline Bling")
hotline_bling.artist = drake 
hotline_bling.artist.name #returns the name assigned to the artist Drake

#now, hotline_bling.artist refers to drake, so with this line of code we call the method evolve on the object drake. Drake now writes rap, pop and R and B.
hotline_bling.artist.evolve(["R & B", "Pop"])
p hotline_bling.artist.genres #=> [Rap, R&B, Pop]

#"has many" relationship
#we have a song class and an artist class. An artist should "have many" songs. How do we make it so that an artist keeps track of all the songs that belong to her?
class Song 
  attr_accessor :name, :genre 
  
  @@all = [] #array to store all songs
  
  def initialize(name, genre)
    @name = name 
    @genre = genre
  end 
  
  def save 
    @@all << self
  end 
  
  def artist=(artist)
    @artist = artist
    artist.songs << self
  end 
  
  def artist 
    @artist
  end
    
end 

class Artist 
  attr_accessor :name 
  attr_reader :songs #an array to store all the songs by a particular artist. We don't let it get reassigned.
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song) #feed a song object into here
    @songs << song
  end
  
end 

drake = Artist.new("Drake")
drake.add_song(Song.new("In My Feelings", "hip hop"))
drake.add_song(Song.new("Hotline Bling", "pop"))
p drake.songs #returns array of songs by Drake
p drake.songs[0].genre #returns genre of "In My Feelings" (hip hop)

#BUT! The songs don't "know" that they belong to Drake. When we add a song to Drake's collection, the song's artist doesn't get changed or updated.

marvin = Song.new("Marvin's Room", "R and B")
drake.add_song(marvin)
marvin.artist #returns nil!

#let's fix that 

class Artist_improved 
  attr_accessor :name
  attr_reader :songs 
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self #the song's artist = the artist calling the method add_song
  end 
end

#now it works!

drake = Artist_improved.new("Drake")
marvin = Song.new("Marvin's Room", "R and B")
drake.add_song(marvin)
p marvin.artist.name #returns Drake

#Now, we want to make sure that when we assign a song to an artist, that song shows up in the artist's collection of songs. We added 
#def artist=(artist)
 #   @artist = artist
  #  artist.songs << self
#  end 
#to the Song class to accomplish this.

take_care = Song.new("Take Care", "R&B")
take_care.artist = drake 
p drake.songs
p drake.songs[2].name #"take care"

#Another way to do the same thing. First, add an array @@all to Songs class which will collect all the newly made songs 
class Song_2 
  attr_accessor :name, :genre, :artist 
  
  @@all = [] #array to store all songs
  
  def initialize(name, genre)
    @name = name 
    @genre = genre
    save
  end 
  
  def save 
    @@all << self
  end 
  
  def artists_name #displays artist's name 
    self.artist.name 
  end
end 

#And define an artist's songs by selecting the songs by that artist in the @@all array 
class Artist_2 
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def songs 
    Song_2.all.select{|song| song.artist == self}
  end 
  
  def add_song(song)
    song.artist = self #changes the artist listed in the @@all array, and therefore changes the songs selected by song
  end 
  
  def add_song_by_name(name, genre) #creates a song AND assigns it an artist
    song = Song.new(name, genre)
    add_song(song) #or delete add song method and change this line to song.artist = self
  end
end
