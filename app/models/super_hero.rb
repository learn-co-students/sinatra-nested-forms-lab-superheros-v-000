class SuperHero
  attr_accessor :name, :power, :bio

  ALL = []

  def initialize(attributes={})
    @name = attributes[:name]
    @power = attributes[:power]
    @bio = attributes[:bio]
    ALL << self
  end

  def self.all
    ALL
  end

end
