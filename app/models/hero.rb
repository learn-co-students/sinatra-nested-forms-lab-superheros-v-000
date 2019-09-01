class Hero
  attr_accessor :name, :power, :bio

  @@heros = []
  def initialize(name, power, bio)
  	@name = name
  	@power = power
  	@bio = bio
  	@@heros << self
  end

  def self.all
  	@@heros
  end
end