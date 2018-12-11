class Team 
  attr_accessor :name, :motto
  
  TEAMS = []
  
    def initialize(params) 
    @name = params[:name]
    @motto = params[:motto]
    self.class.all << self
  end 
  
  def self.all
    TEAMS
  end
end 