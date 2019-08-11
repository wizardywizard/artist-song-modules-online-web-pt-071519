require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'

class Song
  
  extend Memorable::ClassMethod
  extend Findable::ClassMethod
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
