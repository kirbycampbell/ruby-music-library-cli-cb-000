class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name, artist = nil)
    @name = name
    Artist.add_song(name)
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    new = self.new(name)
    new.save
    new
  end
end
