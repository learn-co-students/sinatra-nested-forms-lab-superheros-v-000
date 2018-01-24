class Hero

  attr_reader :name, :power, :bio

  @@heroes = []

  def initialize(values)
    @name = values[:name]
    @power = values[:power]
    @bio = values[:bio]
    @@heroes << self
  end

  def self.all
    @@heroes
  end

end