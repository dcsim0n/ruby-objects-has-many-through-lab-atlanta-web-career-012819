require "pry"
class Artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  attr_accessor :name
  attr_accessor :genre

  def self.all
    @@all
  end
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    songs.map(&:genre)
  end
end
