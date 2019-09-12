class Team
    attr_accessor :name, :motto, :members

    TEAMS = []

    def initialize(name, motto, members = [])
        self.name = name
        self.motto = motto
        self.members = members

        TEAMS << self
    end

    def self.all
        TEAMS
    end
end