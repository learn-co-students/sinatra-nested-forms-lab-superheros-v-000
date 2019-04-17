class Team
  attr_accessor :name, :team_motto

  TEAMS = []

  def initialize(params)
    @name = params[:name]
    @:team_motto = params[:team_motto]
    TEAMS << self
  end

  def self.all
    TEAMS
  end
end
