class Hero

  attr_accessor :name, :power, :bio

  HEROS = []
  def initialize(hero)
    @name = hero[:name]
    @power = hero[:power]
    @bio = hero[:bio]
    HEROS << self
  end

  def self.all
    HEROS
  end
end
