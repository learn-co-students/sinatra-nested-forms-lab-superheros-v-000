class Team
   attr_accessor :name, :motto
   TEAMS = []
   def initialize(attributes)
      @name = attributes[:name]
      @motto = attributes[:motto]
      TEAMS << self
   end

   def self.all
      TEAMS
   end

end