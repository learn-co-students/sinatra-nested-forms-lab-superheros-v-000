class Hero
    attr_reader :name, :power, :biography, :team

    HEROS = []

    def initialize(args)
        @name = args[:name]
        @power = args[:power]
        @biography = args[:biography]
        HEROS << self
    end

    def assign_team(team_name)
        @team = team_name
        team_name.add_hero(self)
    end

    def self.all
        HEROS
    end

    def self.clear
        all.clear
    end
end
