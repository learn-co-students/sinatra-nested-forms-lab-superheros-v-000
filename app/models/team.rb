class Team
   @@teams =[]
   attr_reader :name, :motto
   def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @@teams << self
  end
   def self.all
    @@teams
  end
 end
