class Song 
  attr_accessor :name, :artist, :genre

  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(song, artist, genre)
    @name = song
    @artist = artist
    @genre= genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
    
  
  def self.genre_count
    count = 0
    genre_count = {}
    @@genres.each do |genre|
      count = @@genres.count[genre] {|type| type == genre}
        genre_count[genre] = count
    end
    genre_count
  end
  
  def self.artist_count
    artist_count = {}
    
  end
  
end