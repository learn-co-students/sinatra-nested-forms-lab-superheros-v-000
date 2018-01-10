class Hero
  attr_accessor :name, :power, :bio
  @@heroes = []
  
  def initialize(name, power, bio)
    @name, @power, @bio = name, power, bio
    @@heroes << self
  end
  
  def self.all
    @@heroes
  end
  
  def self.clear
    @@heroes = []
  end
  
end
