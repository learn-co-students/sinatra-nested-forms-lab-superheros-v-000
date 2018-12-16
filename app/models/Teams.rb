class Team
  attr_reader :name, :motto, :heroes
  @@all = []

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    @heroes = args[:hero]
    @@all << self
  end

  def self.all
    @@all
  end
end
