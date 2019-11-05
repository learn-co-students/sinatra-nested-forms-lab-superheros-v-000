class SuperHero

  attr_accessor :name, :power, :bio, :id

  HEROS = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]

    HEROS << self
  end

  def self.all
    HEROS
  end
end
