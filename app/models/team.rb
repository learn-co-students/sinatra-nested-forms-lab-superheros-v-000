class Team
  attr_accessor :name, :motto, :heroes

@@all = []

  def initialize(hash)
    @name = hash[:name]
    @motto = hash[:motto]
    @heroes = hash[:heroes]
    @@all << self
  end

  def self.all
    @@all
  end

end