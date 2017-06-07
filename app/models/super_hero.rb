class SuperHero

  attr_accessor :name, :power, :bio

  @@all = []

  def self.all
    @@all
  end

  def initialize(arguments)
    @name = arguments[:name]
    @power = arguments[:power]
    @bio = arguments[:bio]
    @@all << self
  end

end
