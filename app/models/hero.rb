class Hero

  attr_accessor :name, :power, :bio
  @@all = []

  def initialize(args)
    self.name = args[:name]
    self.power = args[:power]
    self.bio = args[:biography]
    @@all << self
  end
  
  def self.all
    @@all
  end

end