<<<<<<< HEAD
require_relative './concerns/findable'

class Artist
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
  
  def add_song(song)
    #song = Song.new(song)
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist
    
  end
  
  def songs
    @songs
  end
  
  def genres
     songs.map do |song|
      song.genre
    end.uniq
  end
  
  
  def self.create(name)
    artist = self.new(name)
    artist.save
    
    artist
  end
  
  
  
=======


class Artist
  
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
  
  def add_song(song)
    #song = Song.new(song)
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist
    
  end
  
  def songs
    @songs
  end
  
  def genres
     songs.map do |song|
      song.genre
    end
  end
  
  
  def self.create(name)
    artist = self.new(name)
    artist.save
    
    artist
  end
  
  
  
>>>>>>> a41fa933f74b76b208db60c7b33a828e81a9b723
end