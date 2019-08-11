require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
 require_relative '../lib/concerns/paramable'

class Artist
  
  extend Memorable::ClassMethod
  
  extend Findable::ClassMethod
  include Paramable::ClassMethod
  
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    self.class.all << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
