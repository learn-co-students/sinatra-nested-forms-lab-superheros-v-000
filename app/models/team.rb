class Team
  attr_accessor :name, :motto, :members

  @@all = []

  def initialize(team)
    @name = team[:name]
    @motto = team[:motto]
    @members =  Hero.all
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end
end
