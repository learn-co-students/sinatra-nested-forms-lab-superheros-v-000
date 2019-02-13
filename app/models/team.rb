class Team
  attr_reader :name, :motto

  @@all = []

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    Team.all << self
  end

  def self.all
    @@all
  end
end
