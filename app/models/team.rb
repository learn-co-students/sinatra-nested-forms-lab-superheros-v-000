class Team
  attr_accessor :name, :motto

  TEAMS = []

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
  end

  def self.all
    TEAMS
  end
end
