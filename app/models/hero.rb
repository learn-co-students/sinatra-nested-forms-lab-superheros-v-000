class Hero
  attr_accessor :name, :power, :biography
  @@all = Array.new

  def initialize(hero_info)
    @name = hero_info[:name]
    @power = hero_info[:power]
    @biography = hero_info[:biography]
    self.class.all << self
  end

  def self.all
    @@all
  end
end
