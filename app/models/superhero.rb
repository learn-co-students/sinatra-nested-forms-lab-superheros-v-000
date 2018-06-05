class Superhero
  attr_accessor :name, :power, :bio
  @@all = []

  def initialize(args)
    @name = args[:super_hero_name]
    @power = args[:super_hero_power]
    @bio = args[:super_hero_bio]
    @@all << self
  end

  def self.all
    @@all
  end

end
