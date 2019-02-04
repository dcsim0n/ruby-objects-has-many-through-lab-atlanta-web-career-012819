class Genre
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  attr_accessor :name
  def self.all
    @@all
  end
  def songs
    Song.all.select { |song| song.genre == self }
  end

  def artists
    songs.map(&:artist)
  end

end
