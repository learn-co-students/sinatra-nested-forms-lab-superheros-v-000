class Superhero
  attr_reader :name, :power, :bio

  SUPERHERO = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    SUPERHERO << self
  end

  def self.all
    SUPERHERO
  end
end
