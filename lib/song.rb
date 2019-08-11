require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
 require_relative '../lib/concerns/paramable'

class Song
  
  extend Memorable::ClassMethod
  include Memorable::InstanceMethods
  extend Findable::ClassMethod
  include Paramable::ClassMethod
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
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
