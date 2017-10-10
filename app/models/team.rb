class Team
  attr_reader :name, :motto

  def initialize(info)
    @name=info[:name]
    @motto=info[:motto]
    TEAMS << self
  end

  TEAMS = []

  def self.all
    TEAMS
  end

end
