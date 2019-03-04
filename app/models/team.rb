class Team
    attr_accessor :name, :motto
    @@members = []

    def initialize(name, motto)
        @name = name
        @motto = motto
    end

    def create_member(member)
        new_member = Hero.new(member)
        @@members << new_member
    end

    def self.all_members
        @@members 
    end
end