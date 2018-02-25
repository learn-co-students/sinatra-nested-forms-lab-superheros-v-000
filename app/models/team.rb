class Team
      attr_accessor :name, :motto
      TEAMS = [ ]

        def initialize(params)
          @name = params[:team_name]
          @motto = params[:team_motto]
          TEAMS << self
        end

        def self.all
          TEAMS
        end

        def self.clear
          TEAMS.clear
        end

end
