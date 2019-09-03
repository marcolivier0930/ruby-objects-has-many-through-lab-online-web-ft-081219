class Genre
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end

  def songs
    Song.all.select {|song| song.genre}
  end

  def add_song(song)
    @songs << song
  end
  
  def artists
      self.songs.map {|song| song.artist}
  end
end
