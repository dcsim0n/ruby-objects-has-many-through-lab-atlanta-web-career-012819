class Song
  @@all = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre

  def self.all
    @@all
  end

end
