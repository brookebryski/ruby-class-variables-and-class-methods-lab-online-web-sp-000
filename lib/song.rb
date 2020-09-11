class Song
  @@song_count = 0
  @@artist_count = 0

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
    @@song_count += 1
  end

  def self.count
    @@song_count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artist_uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count [genre] genre_count[genre] +=1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

end
