class Hero

  attr_reader :name, :power, :bio

  @@heroes = []

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
