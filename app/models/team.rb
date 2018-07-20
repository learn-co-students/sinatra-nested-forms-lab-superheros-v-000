class Team
  attr_reader :name, :motto, :heroes

  TEAMS = []

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    @heroes = args[:heroes]
    TEAMS << self
  end

  def self.all
    TEAMS
  end

end
