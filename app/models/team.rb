class Team
  attr_accessor :name, :motto

  TEAMS = [] 

  def initialize(args)
    @name = params[:name]
    @motto = params[:motto]
    TEAMS << self
  end

  def self.all
    TEAMS
  end

end