class Member
    attr_accessor :name, :power, :bio

    MEMBERS = []

    def initialize(name, power, bio)
        self.name = name
        self.power = power
        self.bio = bio

        MEMBERS << self
    end

    def self.all
        MEMBERS
    end
end