class Team

  attr_accessor :name, :motto, :team_id, :members
    TEAMS = []
    MEMBERS = []

    def initialize(params)
      @name = params[:team][:name]
      @motto = params[:team][:motto]
      @team_id = params[:team][:team_id]
      TEAM << self
    end

    def self.all
      TEAMS
    end

    def members
      # MEMBERS << @@superheroes
    end

end
