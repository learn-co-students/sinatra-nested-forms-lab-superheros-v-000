class Hero
  attr_reader :name, :power, :bio

  HEROS = []

  def initialize(details)
    @name = details[0]
    @power = details[1]
    @bio = details[2]
    HEROS << self
  end

  def self.all
    HEROS
  end
end
