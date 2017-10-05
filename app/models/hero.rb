class Hero
  attr_accessor :name, :power, :biography

  @@all = Array.new

  def initialize(args)
    self.name = args[:name]
    self.power = args[:power]
    self.biography = args[:biography]
    Hero.all << self
  end

  def self.all 
    @@all 
  end
end