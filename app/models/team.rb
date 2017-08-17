class Team
  attr_accessor :name, :motto, :height
  TEAMS = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    TEAMS << self
  end

  def self.all
    TEAMS
  end

end
