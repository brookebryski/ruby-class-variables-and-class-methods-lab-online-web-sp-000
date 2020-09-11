class Song
  @@count = 0
  @@artist_count = 0
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artist_count += 1
  end

  def self.count
    @@count
  end

  def self.artist_count
    @@artist_count
  end
end
