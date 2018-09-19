class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.uniq.each do |genre|
      #puts "++++++++++\n#{genre}"
      count = 0
      @@genres.each do |g|
        if genre == g
          count += 1
        end
      end
      #puts "#{genre} : #{count}"
      genre_hash[genre] = count
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.uniq.each do |artist|
      #puts "++++++++++\n#{genre}"
      count = 0
      @@artists.each do |a|
        if artist == a
          count += 1
        end
      end
      #puts "#{genre} : #{count}"
      artist_hash[artist] = count
    end
    artist_hash
  end

end
