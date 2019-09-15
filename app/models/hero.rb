class Hero
  attr_accessor :name, :power, :bio

  HEROES = []

  def initialize(info_hash)
    @name = info_hash[:name]
    @power = info_hash[:power]
    @bio = info_hash[:bio]
    HEROES << self
  end

  def self.all
    HEROES
  end
end
