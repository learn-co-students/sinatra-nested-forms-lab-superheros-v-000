class Team
  attr_reader :name, :motto

  TEAMS = Array.new

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    TEAMS << self
  end

  def self.all
    TEAMS
  end
end
