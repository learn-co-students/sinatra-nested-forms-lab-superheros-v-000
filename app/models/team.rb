class Team

  TEAMS = []

  attr_accessor :name, :motto

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    TEAMS << self
  end

  def self.all
    TEAMS
  end
end
