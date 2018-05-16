class Song
  attr_accessor :name
  @@all = []

  def initialize(name, artist = nil)
    @name = name
    
    
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
