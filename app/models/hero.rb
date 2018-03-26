class Hero

  attr_accessor :name, :power, :bio

  @@heroes = []

  def initialize(name, power, bio)
    @name=name
    @power=power
    @bio=bio
    @@heroes << self
  end

  def self.all
    @@heroes
  end

  def self.clear
    @@heroes.clear
  end
end