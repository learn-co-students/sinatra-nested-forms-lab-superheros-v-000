class Team
  attr_reader :name, :motto

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
  end

  def self.all
    TEAMS
  end

end
