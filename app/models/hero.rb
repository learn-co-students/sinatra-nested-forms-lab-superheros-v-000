class Hero
  attr_accessor :name, :power, :bio
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

  def self.clear
    HEROS.clear
  end

end