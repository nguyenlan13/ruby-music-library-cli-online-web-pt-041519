<<<<<<< HEAD
require_relative './concerns/findable'
class Genre
  extend Concerns::Findable
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def self.create(name)
    genre = self.new(name)
    genre.save
    genre
  end
  
  def add_song(song)
    @songs << song unless @songs.include?(song)
    song.genre = self unless song.genre
  end

  def songs
    @songs
  end
  
  def artists
    songs.map do |song|
     song.artist
   end.uniq
 end
  
=======
class Genre
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def self.create(name)
    genre = self.new(name)
    genre.save
    genre
  end
  
  def songs
    @songs
  end
  
  
>>>>>>> a41fa933f74b76b208db60c7b33a828e81a9b723
end