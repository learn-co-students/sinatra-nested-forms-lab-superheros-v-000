class Team
    attr_reader :name, :motto, :members

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