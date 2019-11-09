class Team
  attr_accessor :name, :motto, :heroes
  @@all = []

  def initialize
    @@all << self
    @heroes = []
  end
  def self.all

    @@all
  end

end
