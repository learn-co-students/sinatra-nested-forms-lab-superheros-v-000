class Team
  attr_accessor :name, :motto

  def initialize(attributes)
    @name = attributes[:name]
    @motto= attributes[:motto]
    @@teams << self
  end


  @@teams= []

  def self.all
    @@teams
  end

end

class Hero
  attr_accessor :name, :power, :bio

  def initialize(attributes)
    @name = attributes[:name]
    @power= attributes[:power]
    @bio= attributes[:bio]
    @@heroes << self
  end


  @@heroes = []

  def self.all
    @@heroes
  end

end