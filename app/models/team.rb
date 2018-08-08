class Team
  attr_reader :name, :motto

  @@teams = []

  def initialize(team)
    @name = team[:name]
    @motto = team[:motto]
    @@teams << self
  end

  def self.all
    @@teams
  end
end
