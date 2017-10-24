class Team
    attr_accessor :name, :motto
    TEAMS = []

   def initialize(params)
     @name = params[:name]
     @motto = params[:motto]
     TEAMS << self

     params[:members].each do |member|
       SuperHero.new(member)
     end
    end

   def self.all
     TEAMS
   end
 end
