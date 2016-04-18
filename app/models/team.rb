class Team
  attr_reader :name, :motto

  TEAMS = []

  def initialize(args)
    @name, @motto = args[:name], args[:motto]
    TEAMS << self
  end

  def self.all
    TEAMS
  end
end