class Superhero
  attr_accessor :name, :power, :bio
  @@all = []

  def initialize(member)
    @name = member.super_hero_name
    @power = member.super_hero_power
    @bio = member.super_hero_bio
    @@all << self
  end

  def self.all
    @@all
  end

end
