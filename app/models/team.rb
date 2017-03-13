class Team 
    attr_accessor :name, :motto
    attr_reader :heros

    @@all = []
    def initialize(team_info = {})
        team_info.each do |k,v|
            send("#{k}=",v) 
        end
    end

    def self.create(team_info = {})
        team = Team.new(team_info)
        team.save
        team
    end
    
    def self.all
        @@all
    end
        
    def save
        @@all << self
    end
    
    def heros= (hero)
        @heros << hero
    end
    
end