
class Hero
  attr_accessor :name, :power, :bio
  @@heroes = []
  def initialize(hero_attr)
    @name = hero_attr['name']
    @power = hero_attr['power']
    @bio = hero_attr['bio']
    self.class.all << self
  end

  def self.all
    @@heroes
  end

end
