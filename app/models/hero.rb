class Hero
  @@heroes = []
  attr_accessor :name, :power, :bio
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    @@heroes << self
  end
  def self.all
    @@heroes
  end
end
