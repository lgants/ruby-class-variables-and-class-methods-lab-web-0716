require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name_i, artist_i, genre_i)
    @name = name_i
    @artist = artist_i
    @genre = genre_i
    @@count += 1
    @@artists << artist_i #if !@@artists.include?(artist_i)
    @@genres << genre_i #if !@@genres.include?(genre_i)
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  #need to use self.genre_count since this is a class method
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      genre_hash.key?(genre) ? genre_hash[genre] += 1 : genre_hash[genre] = 1
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      artist_hash.key?(artist) ? artist_hash[artist] += 1 : artist_hash[artist] = 1
    end
    artist_hash
  end


end
