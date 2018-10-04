class Team
    attr_reader :name, :motto, :heros

    TEAM = []

    def initialize(params)
        @name = params[:team][:name]
        @motto = params[:team][:motto]
        @heros = []
        TEAM << self
    end

    def add_hero(arg)
        @heros << arg
    end

    def self.all
        TEAM
    end
end